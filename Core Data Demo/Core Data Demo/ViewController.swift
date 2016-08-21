//
//  ViewController.swift
//  Core Data Demo
//
//  Created by 高山大介 on 2016/02/28.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        //let context: NSManagedObjectContext = appDel.managedObjectContext
        
        //var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
//        
//        newUser.setValue("Rob", forKey: "username")
//        
//        newUser.setValue("pass123", forKey: "password")
//        
//        do {
//        
//            try context.save()
//        
//        } catch {
//            
//            print("しっぱい")
//            
//        }
        
        
        var appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        var context: NSManagedObjectContext = appDel.managedObjectContext
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as! NSManagedObject

        
        
        var request = NSFetchRequest(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        
        request.predicate = NSPredicate(format: "username = %@", "Kirsten")
        
        
        var results = context.executeFetchRequest(request, error: nil)
            
        if results!.count > 0 {
                
            for result: AnyObject in results! {
                    
                if let username: String = result.valueForKey("username") as? String {
                    
                        printlen(username)
                }
                
            }
            
        } else {
            
            print("fetch しっぱい")
        }
        
        
        
//        do {
//            
//            let results = try context.executeFetchRequest(request)
//            
//            if results.count > 0 {
//                
//                for result in results as! [NSManagedObject] {
//                 
//                    print(result.valueForKey("username")!)
//                    print(result.valueForKey("password")!)
//                    
//                }
//                
//            }
//            
//        } catch {
//            
//            print("fetch しっぱい")
//            
//        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

