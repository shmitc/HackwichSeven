//
//  ViewController.swift
//  HackwichSeven
//
//  Created by CM Student on 4/4/19.
//  Copyright © 2019 Shaelyn Mitchell. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapVIew: MKMapView!
    
    //set initial location to UHWO
    let initialLocation = CLLocation(latitude: 21.361888 , longitude: -158.055725)
    //set region around UHWO to 10000m
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        centerMapOnLocation(location: initialLocation)
        
        //create an Restaurant object and set all the argunents to each of the three parameter
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapVIew.addAnnotation(restaurantOne)
    }
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius,longitudinalMeters: regionRadius)
        mapVIew.setRegion(coordinateRegion, animated: true)
    }

}

