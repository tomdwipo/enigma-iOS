//
//  HomePresenter.swift
//  DITest
//
//  Created by Tommy on 17/01/22.
//

import Foundation
import Module_login

struct HomePresenter {
    let usecase: GetMessageUseCase
    let view: HomeView
    var isChangeData: Bool = true
    
    
    mutating func changeData() {
        isChangeData = !isChangeData
        view.updateText(text: isChangeData ? usecase.getMessage() : "texting")
    }
}
