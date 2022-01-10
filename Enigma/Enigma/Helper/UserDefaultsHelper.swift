//
//  UserDefaultsHelper.swift
//  Enigma
//
//  Created by Tommy on 10/01/22.
//

import Foundation
import SwiftUI

enum UserDefaultsKey: String {
    case isLogin
    case isLoginModel
}


struct UserDefaultsHelper {
    
    
    static func save<T>(value: T, key: UserDefaultsKey) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    
    static func get<T>(type: T.Type , key: UserDefaultsKey) -> T? {
        if let value = UserDefaults.standard.value(forKey: key.rawValue) as? T  {
            return value
        }
        return nil
    }
    
    
    static func save<T:Encodable>(dataModel: T, key: UserDefaultsKey) {
        UserDefaults.standard.set(try? PropertyListEncoder().encode(dataModel), forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    static func get<T: Decodable>(typeModel: T.Type , key: UserDefaultsKey) -> T? {
        if let data = UserDefaults.standard.value(forKey: key.rawValue) as? Data  {
            let model = try? PropertyListDecoder().decode(typeModel, from: data)
            return model
        }
        return nil
    }
    
    
    
}
