//
//  OnboardViewController.swift
//  haikubo
//
//  Created by Leo Szeto on 5/31/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class OnboardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Onboard View Controller Loaded into Memory. [viewDidLoad]")
        // Do any additional setup after loading the view, typically from a nib.
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        println("Onboard View Controller Appeared. [viewDidAppear]")

        let firstPage: OnboardingContentViewController = OnboardingContentViewController(title: "Hi There!", body: "We're so happy you're trying our app!", image: UIImage(named: "icon"), buttonText: nil) {
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
            //self.presentViewController(WorldViewController, animated: true, completion: {println("Onboarding Complete. Going to WorldViewController.")})
            
            self.dismissViewControllerAnimated(true, completion: {
                println("Onboard Process complete")
            })
            
            
        }
        
        let onboardingVC: OnboardingViewController = OnboardingViewController(backgroundImage: UIImage(named: "background"), contents: [firstPage, secondPage, thirdPage, fourthPage])
        
        self.presentViewController(onboardingVC, animated: true, completion: {
            println("Presented onboardingVC.")
        })
    }
    
    override func viewDidDisappear(animated: Bool) {
        println("Onboard View Controller Disappeared. [viewDidDisappear]")
    }
}
