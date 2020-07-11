//
//  ViewController.swift
//  13JsonParsingtoTable
//
//  Created by Dhammapal Janbandhu on 29/06/20.
//  Copyright © 2020 Dhammapal Janbandhu. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {
    
    var userdataArray : [UserModel] = []
    
    
    var myResponse  : JSON? = nil
    
    @IBOutlet weak var userTable: UserTable!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getUserDetails()
        
        }
    
      
    func getUserDetails(){
        
        ApiManager.sharedInstance.getUserData() { (userJson) -> Void in
            
            if userJson != nil {
                
                self.myResponse = userJson!
                
                for i in 0 ..< self.myResponse!.count {
                    let singleData = UserModel(userJson: (self.myResponse?[i])!)
                    self.userdataArray.append(singleData)
                }
                
                DispatchQueue.global(qos: .background).async {
                    DispatchQueue.main.async {
                        // Run UI Updates
                        self.userTable.dataSourceArray = self.userdataArray
                        //self.userTable.reloadData()
                    }
                }
            }
            
        }
        
    }
        
    
    


}

