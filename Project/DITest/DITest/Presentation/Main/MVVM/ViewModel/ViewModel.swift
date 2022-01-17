//
//  ViewModel.swift
//  DITest
//
//  Created by Tommy on 17/01/22.
//

import Foundation
import Module_login
import UIKit


struct ViewModel {
    var isChangeData: Bool
    var usecase : GetMessageUseCase
    
    
    mutating func changeData(){
        isChangeData = !isChangeData
    }
    
    func updateText() -> String {
        return isChangeData ? usecase.getMessage() : "testing"
    }
    
}
