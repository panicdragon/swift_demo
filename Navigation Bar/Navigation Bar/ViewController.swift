//
//  ViewController.swift
//  Navigation Bar
//
//  Created by 高山大介 on 2016/02/13.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    
    func result() {
        
        time++
        
        print(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timmer = NSTimer()
        
        timmer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

