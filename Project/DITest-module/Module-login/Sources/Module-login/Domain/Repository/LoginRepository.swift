//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation

protocol LoginRepository {
    func getLogin() -> LoginModel
}

struct LoginRepositoryImpl: LoginRepository {
    
    let network: LoginNetwork
    
    func getLogin() -> LoginModel {
        return network.getLogin() 
    }
    
    
}
