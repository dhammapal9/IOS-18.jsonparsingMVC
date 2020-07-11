//
//  UserTable.swift
//  18JsonParsingMVC
//
//  Created by Dhammapal Janbandhu on 10/07/20.
//  Copyright © 2020 Dhammapal Janbandhu. All rights reserved.
//

import UIKit

class UserTable: UITableView,UITableViewDataSource,UITableViewDelegate {
    
    var dataSourceArray = [UserModel](){
        didSet{
            reloadData()
        }
    }

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.delegate = self
        self.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        
        let singledata = self.dataSourceArray[indexPath.row]
        
        cell.userId.text = String(singledata.id)
        cell.userName.text = singledata.name
        cell.usrUserName.text = singledata.username
        cell.userEmail.text = singledata.email
        cell.userPhone.text = singledata.phone
        cell.userWebsite.text = singledata.website
        
        cell.street.text = singledata.userAddress.street
        cell.suite.text = singledata.userAddress.suite
         cell.city.text = singledata.userAddress.city
         cell.zip.text = singledata.userAddress.zipcode
        
        cell.lat.text = String(singledata.userAddress.userAddressLocation.lat)
        cell.long.text = String(singledata.userAddress.userAddressLocation.longi)
        
         cell.companyName.text = singledata.userCompany.companyname
         cell.phrase.text = singledata.userCompany.catchPhrase+"=="+singledata.userCompany.catchPhrase
         cell.business.text = singledata.userCompany.bs
        
        return cell
        
    }

}
