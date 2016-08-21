//
//  ViewController.swift
//  Hello World
//
//  Created by 高山大介 on 2016/02/11.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func submit(sender: AnyObject) {
        
        print("Button tapped")
        label.text = textField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello World！")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

