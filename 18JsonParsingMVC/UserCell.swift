//
//  UserCell.swift
//  13JsonParsingtoTable
//
//  Created by Dhammapal Janbandhu on 29/06/20.
//  Copyright © 2020 Dhammapal Janbandhu. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var usrUserName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var userPhone: UILabel!
    
    @IBOutlet weak var userWebsite: UILabel!
    
    @IBOutlet weak var zip: UILabel!
    @IBOutlet weak var street: UILabel!
    
    @IBOutlet weak var long: UILabel!
    @IBOutlet weak var lat: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var suite: UILabel!
    
    
    @IBOutlet weak var companyName: UILabel!
    
    @IBOutlet weak var phrase: UILabel!
    
    @IBOutlet weak var business: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
