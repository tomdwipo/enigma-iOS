//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation

protocol LoginNetwork {
     func getLogin() -> LoginModel
}

struct LoginNetworkImpl: LoginNetwork {
    
    
    
    func getLogin() -> LoginModel {
        return LoginModel(message: "Oke")
    }
}
