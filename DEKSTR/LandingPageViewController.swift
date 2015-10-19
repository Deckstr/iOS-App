//
//  LandingPageViewController.swift
//  DEKSTR
//
//  Created by Monte's Pro 13" on 9/17/15.
//  Copyright © 2015 Monte Thakkar. All rights reserved.
//

import UIKit
import Parse

class LandingPageViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var companyNameLabel: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var websiteLabel: UITextField!
    
    @IBAction func saveButton(sender: UIButton) {

       print("YOYOYO")

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Show the current visitor's username
        if let pUserName = PFUser.currentUser()?["username"] as? String {
            self.userNameLabel.text = pUserName
            self.designationLabel.text = "Software Engineer"
            self.profilePicture.image = UIImage(named: "FemaleUserImage")?.circle
        }

    }

    override func viewWillAppear(animated: Bool) {
        if (PFUser.currentUser() == nil) {
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Login") as! UIViewController
                self.presentViewController(viewController, animated: true, completion: nil)
            })
        }
    }

    
//    override func viewWillAppear(animated: Bool) {
//        if (PFUser.currentUser() == nil) {
//            dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                
//                let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("LandingPage") as! UIViewController
//                self.presentViewController(viewController, animated: true, completion: nil)
//            })
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
