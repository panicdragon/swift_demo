//
//  ViewController.swift
//  Where I am
//
//  Created by 高山大介 on 2016/02/14.
//  Copyright © 2016年 高山大介. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var manager:CLLocationManager!

    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var altitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        print(locations)
        
        var userLocation:CLLocation = locations[0] as! CLLocation
        
        self.latitudeLabel.text = "\(userLocation.coordinate.latitude)"
        self.longitudeLabel.text = "\(userLocation.coordinate.longitude)"
        
        self.courseLabel.text = "\(userLocation.course)"
        
        self.speedLabel.text = "\(userLocation.speed)"
        
        self.altitudeLabel.text = "\(userLocation.altitude)"
        
        
        CLGeocoder().reverseGeocodeLocation(userLocation, completionHandler: { (placemarks, error) -> Void in
            
            if (error != nil) {
                
                print(error)
                
            } else {
                
                
                if let p = placemarks?[0] {
                    
                    var subThoroughfare: String = ""
                    
                    if (p.subThoroughfare != nil) {

                        subThoroughfare = p.subThoroughfare!
                        
                    }
                    
                    self.addressLabel.text = "\(subThoroughfare) \(p.subLocality) \n \(p.subAdministrativeArea) \(p.postalCode) \(p.country)"
                    
                }
                
                
                
//                if let p = CLPlacemark(placemark: placemarks?[0] as! CLPlacemark) {
//                    
//                    print(p)
//                    
//                }
                
                
            }
            
        })
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

