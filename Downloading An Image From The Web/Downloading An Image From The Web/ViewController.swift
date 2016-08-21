//
//  ViewController.swift
//  Downloading An Image From The Web
//
//  Created by 高山大介 on 2016/08/21.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/b/b5/Bach.jpg")
        
        let urlRequest = NSURLRequest(URL: url!)
        
        
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            
            if error != nil {
                print(error)
                
            } else {
                
                if let bach = UIImage(data: data!) {
                    //self.image.image = bach
                    
                    var documentsDirectory:String?
                    
                    var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                    
                    if paths.count > 0 {
                        documentsDirectory = paths[0] as? String
                        
                        let savePath = documentsDirectory! + "/bach.jpg"
                        
                        NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                        
                        self.image.image = UIImage(named: savePath)
                        
                    }
                    
                    
                }
                
            }
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

