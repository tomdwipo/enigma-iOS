//
//  MoreInteractor.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import Foundation
import Module_login

protocol MoreInteractorProtocol {
   mutating func changeData() -> MoreEntity
}


struct MoreInteractor: MoreInteractorProtocol{

    let usecase: GetMessageUseCase
    
    var isChange: Bool = true
    
   mutating func changeData() -> MoreEntity {
        isChange = !isChange
        return MoreEntity(text:  isChange ? usecase.getMessage() : "default")
    }
}
