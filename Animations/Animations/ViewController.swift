//
//  ViewController.swift
//  Animations
//
//  Created by 高山大介 on 2016/02/13.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet weak var dragonImage: UIImageView!
    
    @IBAction func updateImage(sender: AnyObject) {
        
//        if counter == 13 {
//            
//            counter = 1
//        } else {
//            counter++
//        }
//        
//        dragonImage.image = UIImage(named: "frame\(counter).png")
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)

            isAnimating = true
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func doAnimation() {
        if counter == 13 {
            
            counter = 1
        } else {
            counter++
        }
        
        dragonImage.image = UIImage(named: "frame\(counter).png")
    }
    
    
    /*
    override func viewDidLayoutSubviews() {
        // viewが呼ばれる前
        
//        dragonImage.center = CGPointMake(dragonImage.center.x - 400, dragonImage.center.y)
//        dragonImage.alpha = 0
        
        dragonImage.frame = CGRectMake(100, 20, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) { () -> Void in
            
//            self.dragonImage.center = CGPointMake(self.dragonImage.center.x + 400, self.dragonImage.center.y)
//            self.dragonImage.alpha = 1
            
            self.dragonImage.frame = CGRectMake(100, 20, 100, 200)
        }
    }
    */
    
    


}

