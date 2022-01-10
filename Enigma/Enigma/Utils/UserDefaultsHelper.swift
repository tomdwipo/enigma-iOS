//
//  UserDefaultsHelper.swift
//  Enigma
//
//  Created by RATAMATE on 10/01/22.
//

import Foundation

enum UserDefaultsKey: String {
    case isLogin
    case isLoginModel
}


struct UserDefaultsHelper {
    
    
    static func save<T>(value:T , key:UserDefaultsKey){
        UserDefaults.standard.set(value, forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    static func save<T: Encodable>(dataModel:T , key:UserDefaultsKey){
        UserDefaults.standard.set(try? PropertyListEncoder().encode(dataModel), forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    
    static func get<T>(for type:T.Type,key:UserDefaultsKey) -> T? {
        if let value = UserDefaults.standard.value(forKey: key.rawValue) as? T {
            return value
        }
        return nil
    }
    
    static func get<T: Decodable>( type: T.Type, key: UserDefaultsKey)-> T? {
        if let data = UserDefaults.standard.value(forKey: key.rawValue) as? Data {
            let obj = try? PropertyListDecoder().decode(type, from: data)
            return obj
        }
        return nil
    }
}


class LoginModel: Codable {
    var isLogin: Bool?
    var isMessage: String?
}
