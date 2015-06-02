//
//  WorldViewController.swift
//  haikubo
//
//  Created by Leo Szeto on 5/31/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class WorldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println("World View Controller Loaded into Memory. [viewDidLoad]")
        // Do any additional setup after loading the view, typically from a nib.
        // The first time this loads ever, present the onboarding screen instead.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        println("World View Controller Appeared. [viewDidAppear]")


    }
    
    override func viewDidDisappear(animated: Bool) {
        println("World View Controller Disappeared. [viewDidDisappear]")
    }
    
    
    @IBAction func btnResetOnboardPressed(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setObject(0, forKey: "isFirstTime")
        NSUserDefaults.standardUserDefaults().synchronize()
        println("Tutorial has been reset.")
    }
}

