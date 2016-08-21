//
//  ViewController.swift
//  is it Prime
//
//  Created by 高山大介 on 2016/02/12.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        
        if let number = Int(numberTextField.text!) {
        
            var isPrime = true
        
        
            if number == 1 {
                isPrime = false
            }
        
            if number != 2 && number != 1 {
            
                for var i = 2 ; i < number; i++ {
                
                    if number % i == 0 {
                        isPrime = false
                    
                    }
                
                }
            
            }
        
            if isPrime {
                resultLabel.text = "\(number) is prime!"
            } else {
                resultLabel.text = "\(number) is not prime!"
            }
        } else {
            resultLabel.text = "数字を入力してください"
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

