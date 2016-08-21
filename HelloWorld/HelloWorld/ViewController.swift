//
//  ViewController.swift
//  HelloWorld
//
//  Created by 高山大介 on 2016/02/11.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberText: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        //var numberResult = Int(numberText.text!)!
        
        var numberResult = Int(numberText.text!)!
        
        numberResult = numberResult * 5
        
        resultLabel.text = "5倍した数値は \(numberResult) となります。"
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

