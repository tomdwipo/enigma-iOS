//
//  GoAssembly.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import Foundation
import Swinject

@available(iOS 13.0, *)
class GoAssembly: Assembly {
    func assemble(container: Container) {
        container.register(GoViewModel.self) { r in
            let resolve = GoViewModel()
            return resolve
        }
        
        container.register(GoViewController.self) { r in
            let resolve = GoViewController()
            resolve.viewModel = r.resolve(GoViewModel.self)!
            return resolve
        }
        
    }
}
