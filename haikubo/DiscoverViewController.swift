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

class DiscoverViewController: UIViewController {

    @IBOutlet weak var discoverMap: MKMapView!
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Discover View Controller Loaded into Memory. [viewDidLoad]")
        // Do any additional setup after loading the view, typically from a nib.
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
}

