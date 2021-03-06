//
//  ViewController.swift
//  Working With Audio
//
//  Created by 高山大介 on 2016/02/17.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func play(sender: AnyObject) {

        player.play()
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func adjustVolume(sender: AnyObject) {

        player.volume = slider.value
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            
        } catch {
            
            // Process error here
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

