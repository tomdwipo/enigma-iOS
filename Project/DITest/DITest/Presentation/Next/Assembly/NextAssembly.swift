//
//  NextAssembly.swift
//  DITest
//
//  Created by Tommy on 19/01/22.
//

import Foundation
import Swinject
import Module_login

struct NextAssembly: Assembly {
    func assemble(container: Container) {
        container.register(NextViewModel.self) { r in
            let resolve = NextViewModel( usecase: r.resolve(GetMessageUseCase.self)!)
            return resolve
        }
        
        container.register(NextViewController.self) { r in
            let resolve = NextViewController()
            resolve.viewModel = r.resolve(NextViewModel.self)!
            return resolve
        }
        
    }
    
    
}
