//
//  MainBarController.swift
//  haikubo
//
//  Created by Leo Szeto on 5/31/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class MainBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println("Main Bar Controller Loaded into Memory. [viewDidLoad]")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        println("Main Bar Controller Appeared. [viewDidAppear]")
        var seenTutorial = NSUserDefaults.standardUserDefaults().valueForKey("isFirstTime") as! Int
        println(seenTutorial)
        if seenTutorial == 1
        {
            println("Tutorial has been seen before")
        }
        else
        {
            println("Running Tutorial for the first time")
            let firstPage: OnboardingContentViewController = OnboardingContentViewController(title: "Hello!", body: "Haikuku is an app to find and discover hidden haikus, made by users around the world.", image: UIImage(named: "onboard1gfx"), buttonText: nil) {
                // do something here when the user presses the button
            }
            
            let secondPage: OnboardingContentViewController = OnboardingContentViewController(title: "DISCOVER", body: "Read & Rate Haikus made by other users", image: UIImage(named: "icon"), buttonText: nil) {
                // do something here when the user presses the button
            }
            
            let thirdPage: OnboardingContentViewController = OnboardingContentViewController(title: "EXPLORE", body: "Find local Haikus and reveal them!", image: UIImage(named: "icon"), buttonText: nil) {
                // do something here when the user presses the button
                //self.presentViewController(WorldViewController, animated: true, completion: {println("Onboarding Complete. Going to WorldViewController.")})
            }
            
            let fourthPage: OnboardingContentViewController = OnboardingContentViewController(title: "POST", body: "Share your own Haikus & place them in the world", image: UIImage(named: "icon"), buttonText: "Let's go!") {
                // do something here when the user presses the button
                NSUserDefaults.standardUserDefaults().setObject(1, forKey: "isFirstTime")
                NSUserDefaults.standardUserDefaults().synchronize()
                
                self.dismissViewControllerAnimated(true, completion: {
                    println("Onboard Process complete")
                    
                })
            }
            
            let onboardingVC: OnboardingViewController = OnboardingViewController(backgroundImage: UIImage(named: "onboard"), contents: [firstPage, secondPage, thirdPage, fourthPage])
            
            //Configuration settings for the Onboarding library
            //I can change all of this to however I want at the end of each page. 
            onboardingVC.fontName = "Helvetica-Light";
            onboardingVC.titleFontSize = 36;
            onboardingVC.bodyFontSize = 22;
            onboardingVC.topPadding = 20;
            onboardingVC.underIconPadding = 10;
            onboardingVC.underTitlePadding = 15;
            onboardingVC.bottomPadding = 20;
            
            self.presentViewController(onboardingVC, animated: true, completion: {
                println("Presented onboardingVC.")
            })
        }
    }
    
    override func viewDidDisappear(animated: Bool) {
        println("Main Bar Controller Disappeared. [viewDidDisappear]")
    }

    
}