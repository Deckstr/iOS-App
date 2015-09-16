//
//  UserTableViewCell.swift
//  DEKSTR
//
//  Created by Monte's Pro 13" on 9/13/15.
//  Copyright (c) 2015 Monte Thakkar. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var connectButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
