//
//  SettingsTableController.swift
//  Haikubo
//
//  Created by Leo Szeto on 6/9/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate {
    
    //Raise Alert for confirmation, then resets the tutorial.
    @IBAction func resTutPressed(sender: AnyObject) {
    var alert = UIAlertController(title: "Are you sure?", message: "This will reset the onboarding messages", preferredStyle: UIAlertControllerStyle.Alert)
    alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: { (ACTION) -> Void in
            NSUserDefaults.standardUserDefaults().setObject(nil, forKey: "isFirstTime")
            NSUserDefaults.standardUserDefaults().synchronize()
            println("Onboarding messages Reset")
        }))
    alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (ACTION) -> Void in
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    var settingName = ["Reset Tutorial", "Setting 2", "Setting 3"]
    //settingValue
    
    @IBAction func settingsPressed(sender: AnyObject) {
        println("User finished with Settings")
        self.dismissViewControllerAnimated(true, completion: {
            println("Settings complete")
        })

    }
    
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
        println("Creating Table [tableView from SettingsViewController")
        return settingName.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("Creating new cell [tableView from SettingsViewController")
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "switchCell")
        
        //println(indexPath)
        cell.textLabel?.text = settingName[indexPath.row]
        return cell
        
    }
    
}

