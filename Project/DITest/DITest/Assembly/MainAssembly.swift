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
        container.register(ViewController.self) { r in
            let resolve = ViewController()
            resolve.usecase = SetupModuleLogin.resolve
            return resolve
        }
    }
}
