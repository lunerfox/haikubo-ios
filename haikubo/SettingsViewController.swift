//
//  SettingsTableController.swift
//  Haikubo
//
//  Created by Leo Szeto on 6/9/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate {
    
    var settingName = ["Reset Tutorial", "Setting 2", "Setting 3"]
    //settingValue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Settings View Controller Loaded into Memory. [viewDidLoad]")
        // Do any additional setup after loading the view, typically from a nib.
        // The first time this loads ever, present the onboarding screen instead.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        println("Settings View Controller Appeared. [viewDidAppear]")
        
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        println("Settings View Controller Disappeared. [viewDidDisappear]")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingName.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "switchCell")
        
        println(indexPath)
        cell.textLabel?.text = settingName[indexPath.row]
        return cell
        
    }
    
}

