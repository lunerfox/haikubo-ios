//
//  SecondViewController.swift
//  haikubo
//
//  Created by Leo Szeto on 5/31/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DiscoverViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var discoverMap: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Discover View Controller Loaded into Memory. [viewDidLoad]")
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.startUpdatingHeading()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        println("Discover View Controller Appeared. [viewDidAppear]")
    }
    
    override func viewDidDisappear(animated: Bool) {
        println("Discover View Controller Disappeared. [viewDidDisappear]")
    }
    
    //This function is called whenever the location is updated.
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        println(locations)
        
        var userLocation: CLLocation = locations[0] as! CLLocation
        
        var latitude: CLLocationDegrees = userLocation.coordinate.latitude
        var longitude: CLLocationDegrees = userLocation.coordinate.longitude
        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var latDelta: CLLocationDegrees = 0.05
        var longDelta: CLLocationDegrees = 0.05
        var span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        discoverMap.setRegion(region, animated: true)
        
    }
}

