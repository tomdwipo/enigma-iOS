//
//  HomeAssembly.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject
import Module_login

class HomeAssembly: Assembly {
    func assemble(container: Container) {
      
        container.register(HomePresenter.self) { r in
            let resolve = HomePresenter(usecase: r.resolve(GetMessageUseCase.self)!, view: r.resolve(HomeView.self)!)
            return resolve
        }
        
        container.register(HomeViewController.self) { r in
            let resolve = HomeViewController(nibName: String(describing: HomeViewController.self), bundle: nil)
            resolve.presenter = r.resolve(HomePresenter.self)!
            return resolve
        }
        
        container.register(HomeView.self) { r in
            let resolve = HomeViewController(nibName:  String(describing: HomeViewController.self), bundle: nil)
            return resolve
        }.initCompleted { r, homeView in
            let vc = homeView as! HomeViewController
            vc.presenter = r.resolve(HomePresenter.self)!
        }
    }
}
