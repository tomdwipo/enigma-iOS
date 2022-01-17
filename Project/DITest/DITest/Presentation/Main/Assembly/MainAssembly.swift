//
//  MainAssembly.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject
import Module_login

class MainAssembly: Assembly {
   
    func assemble(container: Container) {
        container.register(ViewModel.self) { r in
            let resolve = ViewModel(isChangeData: false, usecase: r.resolve(GetMessageUseCase.self)!)
            return resolve
        }
        
        container.register(ViewController.self) { r in
            let resolve = ViewController()
            resolve.viewModel = r.resolve(ViewModel.self)!
            return resolve
        }
        
        
    }
}
