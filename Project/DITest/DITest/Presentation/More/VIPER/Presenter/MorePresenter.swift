//
//  MorePresenter.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import Foundation
import UIKit


struct MorePresenter {
    var interactor: MoreInteractorProtocol
    let router: MoreRouterProtocol
    let view: MoreView
    
    
    mutating func changeData() {
        view.updateText(text: interactor.changeData().text)
    }
    
    func navigateToNextPage(caller: UIViewController){
        router.navigateToMorePage(caller: caller)
    }
    
    
    
}
