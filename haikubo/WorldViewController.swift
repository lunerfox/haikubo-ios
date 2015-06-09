//
//  WorldViewController.swift
//  haikubo
//
//  Created by Leo Szeto on 5/31/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class WorldViewController: UIViewController, UITableViewDelegate {

    var postName = ["Post 1", "Post 2", "Post 3"]
    //settingValue

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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println("Creating Table [tableView from WorldViewController]")
        return postName.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("Creating new cell [tableView from WorldViewController]")
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "haikuPostCell")
        
        //println(indexPath)
        cell.textLabel?.text = postName[indexPath.row]
        return cell
        
    }
}

