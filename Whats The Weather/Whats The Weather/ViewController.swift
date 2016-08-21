//
//  ViewController.swift
//  Whats The Weather
//
//  Created by 高山大介 on 2016/02/13.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func findWeather(sender: AnyObject) {
        
        var wasSuccessful = false
        
        let attemptedUrl = NSURL(string: "http://www.weather-forecast.com/locations/" + cityTextField.text!.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
        
        if let url = attemptedUrl {
        
            let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
                if let urlContent = data {
                
                    let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                    let webSiteArray = webContent?.componentsSeparatedByString("3 Day Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">")
                
                    if webSiteArray!.count > 1 {
                    
                        let weatherArray = webSiteArray![1].componentsSeparatedByString("</span>")
                    
                        if weatherArray.count > 1 {
                        
                            wasSuccessful = true
                            
                            let weatherSummary = weatherArray[0].stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                        
                            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                self.resultLabel.text = weatherSummary
                            })
                        
                        }
                    
                    }
                    
                    if wasSuccessful == false {
                        self.resultLabel.text = "失敗"
                    }
                    
                    
                }
            }
        
            task.resume()
        
        } else {
            
            self.resultLabel.text = "失敗"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

