//
//  DBLogin.swift
//  Kambista
//
//  Created by Derlys H. on 1/8/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

struct DBLogin : Codable {
    
    let success : Bool
    let message : String
    
    enum CodingKeys : String, CodingKey {
        case success = "success"
        case message = "message"
    }
    
}
