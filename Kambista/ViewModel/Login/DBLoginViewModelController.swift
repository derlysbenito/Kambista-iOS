//
//  DBLoginViewModelController.swift
//  Kambista
//
//  Created by Derlys H. on 1/8/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBLoginViewModelController {
    
    public var loginViewModel : DBLoginViewModel!
    
    func loginWithEmail(email : String, password : String, success : @escaping() -> Void, failure : @escaping() -> Void){
        DBWebService.loginWithEmail(email: email, password: password, success: { (response) in
            self.loginViewModel = DBLoginViewModel(model: response)
        }) {
            //print error
        }
    }
    
}
