//
//  ApiManager.swift
//  18JsonParsingMVC
//
//  Created by Dhammapal Janbandhu on 10/07/20.
//  Copyright © 2020 Dhammapal Janbandhu. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiManager {
    
    
    
    
    static var sharedInstance = ApiManager()
    
    private init(){
        
    }
    
    func getUserData(onCompletion:@escaping (JSON?)->Void){
        
        let url = URL(string: FETCH_USER_DETAILS)
        var request = URLRequest(url:url! as URL)
        request.httpMethod = "GET"
        
        Alamofire.request(request).responseJSON(){
            response in
                
                switch(response.result){
                case .success(let response):
                  
                   let responseJson = JSON(response)
                   
                   onCompletion(responseJson)
                   
                   
                   
                   //self.userTable.reloadData()
                    
                  break
                case.failure(let error):
                    
                   onCompletion(nil)
                   
                    
                  break
                    
                }
            }
        
        
    }
    
    
}
