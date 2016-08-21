//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by 高山大介 on 2016/02/13.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.stackoverflow.com")!
        
        webView.loadRequest(NSURLRequest(URL: url))
        
//        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, responce, error) -> Void in
//            
//            if let urlContent = data {
//                
//                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
//                
//                print(webContent)
//                
//                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
//                })
//                
//            } else {
//                
//                // Shoe error message
//                
//            }
//            
//        }
//        
//        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

