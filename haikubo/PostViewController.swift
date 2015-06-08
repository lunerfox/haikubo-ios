//
//  SecondViewController.swift
//  haikubo
//
//  Created by Leo Szeto on 5/31/15.
//  Copyright (c) 2015 Wrightplay. All rights reserved.
//

import UIKit

class PostViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var haikuImage: UIImageView!
    
    @IBAction func postCamBtnPressed(sender: AnyObject) {
        println("User wants to take a photo.")
        
        var image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.Camera
        image.allowsEditing = false
        
        //Now push the camera view to the front!
        self.presentViewController(image, animated: true, completion: nil)
        
    }
    
    //Built in function, triggered after a photo (from camera or library) has been
    //picked.
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        print("Photo has been chosen")
        haikuImage.image = image
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
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

