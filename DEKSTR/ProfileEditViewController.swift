//
//  ProfileEditViewController.swift
//  DEKSTR
//
//  Created by Monte's Pro 13" on 10/18/15.
//  Copyright © 2015 Monte Thakkar. All rights reserved.
//

import UIKit

class ProfileEditViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var companyNameLabel: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var websiteLabel: UITextField!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        self.companyNameLabel.delegate = self
        self.phoneNumber.delegate = self
        self.emailLabel.delegate = self
        self.websiteLabel.delegate = self
        
        // Show the current visitor's username
     }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
