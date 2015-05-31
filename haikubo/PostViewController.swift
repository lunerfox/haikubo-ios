//
//  SecondViewController.swift
//  haikubo
//
//  Created by Leo Szeto on 5/31/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Post View Controller Loaded into Memory. [viewDidLoad]")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        println("Post View Controller Appeared. [viewDidAppear]")
    }
    
    override func viewDidDisappear(animated: Bool) {
        println("Post View Controller Disappeared. [viewDidDisappear]")
    }
    
}
