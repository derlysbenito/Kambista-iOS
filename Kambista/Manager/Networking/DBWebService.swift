//
//  DBWebService.swift
//  Kambista
//
//  Created by Derlys H. on 1/7/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit
import Alamofire

class DBWebService: NSObject {
    
    
    
    static func loginWithEmail(email : String,
                               password : String,
                               success : @escaping(DBLogin) -> Void,
                               failure : @escaping() -> Void){
        
        let parameters : Parameters = ["email" : email, "password" : password]
        
        AF.request("https://api-qa.kambista.com/login", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).validate(statusCode: 200..<300).responseData { (response) in
            switch response.result{
                
            case .success(let data):
                do {
                    let decoder = JSONDecoder()
                    let result = try
                        decoder.decode(DBLogin.self, from: data)
                    success(result)
                    
                } catch let error {
                    print("error : \(error)")
                    failure()
                }
                
            case .failure(let error):
                print("error : \(error)")
                failure()
            }
        }
        
    }

}
