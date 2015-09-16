//
//  User.swift
//  DEKSTR
//
//  Created by Monte's Pro 13" on 9/13/15.
//  Copyright (c) 2015 Monte Thakkar. All rights reserved.
//

import UIKit

class User: NSObject {

    var username: String
    var title: String
    var photo: UIImage?

    //MARK: Initialization
    init?(username: String, title: String, photo: UIImage?) {
        //Initialize stored properties
        self.username = username
        self.title = title
        self.photo = photo
        
        super.init()

        //Initialzation should fail if there is no name or no title
        if username.isEmpty || title.isEmpty {
            return nil
        }
    }
}

