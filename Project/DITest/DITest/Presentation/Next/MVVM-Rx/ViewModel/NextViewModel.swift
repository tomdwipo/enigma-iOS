//
//  NextViewModel.swift
//  DITest
//
//  Created by Tommy on 19/01/22.
//

import Foundation
import RxSwift
import Module_login

struct NextViewModel {
    
    let usecase: GetMessageUseCase
    
    var isChangeData = false
    var resultTxt: BehaviorSubject<String> = BehaviorSubject<String>(value: "default")
    
    mutating func changeText(){
        isChangeData = !isChangeData
        resultTxt.onNext(isChangeData ? usecase.getMessage() : "Done")
    }
}
