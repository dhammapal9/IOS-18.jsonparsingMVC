//
//  UserModel.swift
//  13JsonParsingtoTable
//
//  Created by Dhammapal Janbandhu on 29/06/20.
//  Copyright © 2020 Dhammapal Janbandhu. All rights reserved.
//

import Foundation
import SwiftyJSON

class UserModel {
    
    var id = Int()
    var name = String()
    var username = String()
    var email = String()
    var phone = String()
    var website = String()
    var userAddress: UserAddress
    var userCompany: UserCompany
    
    init(userJson: JSON) {
        self.id = userJson["id"].intValue
        self.name = userJson["name"].stringValue
        self.username = userJson["username"].stringValue
        self.email = userJson["email"].stringValue
        self.phone = userJson["phone"].stringValue
        self.website = userJson["website"].stringValue
        self.userAddress = UserAddress(userAddress: userJson["address"])
        self.userCompany = UserCompany(userCompany: userJson["company"])
        
    }
    
}

class UserAddress {
    
    var street = String()
    var suite = String()
    var city = String()
    var zipcode = String()
    var userAddressLocation: UserAddressLocation
    
    init(userAddress: JSON) {
        self.street = userAddress["street"].stringValue
        self.suite = userAddress["suite"].stringValue
        self.city = userAddress["city"].stringValue
        self.zipcode = userAddress["zipcode"].stringValue
        self.userAddressLocation = UserAddressLocation(userAddressLocation: userAddress["geo"])
    }
    
    
}

class UserAddressLocation {
    
    var lat = Double()
    var longi = Double()
    
    init(userAddressLocation: JSON) {
        self.lat = userAddressLocation["lat"].doubleValue
        self.longi = userAddressLocation["lng"].doubleValue
    }
}


class UserCompany {
    
    var companyname = String()
    var catchPhrase = String()
    var bs = String()
    
    init(userCompany: JSON) {
        self.companyname = userCompany["name"].stringValue
        self.catchPhrase = userCompany["catchPhrase"].stringValue
        self.bs = userCompany["bs"].stringValue
        
    }
}
