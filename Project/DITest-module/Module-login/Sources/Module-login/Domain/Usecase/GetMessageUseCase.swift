//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation

public struct GetMessageUseCase {
    let repository: LoginRepository
    
    public func getMessage() -> String {
        return repository.getLogin().message
    }
}
