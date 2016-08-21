//
//  ViewController.swift
//  Cat Years
//
//  Created by 高山大介 on 2016/02/11.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catAgeField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var catAge = Int(catAgeField.text!)!

        catAge = catAge * 7
        
        resultLabel.text = "Your cat is \(catAge) in cat years"
        
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

