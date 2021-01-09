//
//  DBLoginViewModel.swift
//  Kambista
//
//  Created by Derlys H. on 1/8/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import Foundation

struct DBLoginViewModel {
    
    var success : Bool
    var message : String
    
    init(model : DBLogin) {
        self.success = model.success
        self.message = model.message
    }
    
}
