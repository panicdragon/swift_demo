//
//  ViewController.swift
//  Swipes&Shakes
//
//  Created by 高山大介 on 2016/02/28.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    var sounds = ["calling","car","train","gun","tunk"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var swipRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
//        swipRight.direction = UISwipeGestureRecognizerDirection.Right
//        self.view.addGestureRecognizer(swipRight)
//        
//        var swipUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
//        swipUp.direction = UISwipeGestureRecognizerDirection.Up
//        self.view.addGestureRecognizer(swipUp)
        
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.MotionShake {
            
            var randomNunber = Int(arc4random_uniform(UInt32(sounds.count)))
            
            
            var fileLocation = NSBundle.mainBundle().pathForResource(sounds[randomNunber], ofType: "mp3")
            
            do { try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!))
            
                player.play()
                
            } catch {
                
                
                
            }
            
        }
        
    }
    
    
//    func swiped(gesture: UISwipeGestureRecognizer) {
//        
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            
//            switch swipeGesture.direction {
//                
//            case UISwipeGestureRecognizerDirection.Right:
//                print("Swioed Right")
//            case UISwipeGestureRecognizerDirection.Up:
//                print("Swioed Up")
//            default:
//                break
//                
//            }
//            
//            
//        }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

