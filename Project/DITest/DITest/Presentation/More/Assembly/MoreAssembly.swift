//
//  MoreAssembly.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import Foundation
import Foundation
import Swinject
import Module_login

class MoreAssembly: Assembly {
    func assemble(container: Container) {
       
       
        
        container.register(MoreInteractorProtocol.self) { r in
            let resolve = MoreInteractor(usecase: r.resolve(GetMessageUseCase.self)!)
            return resolve
        }
        
        container.register(MoreRouterProtocol.self) { r in
            let resolve = MoreRouter()
            return resolve
        }
        
        container.register(MoreViewController.self) { r in
            let resolve = MoreViewController()
            resolve.presenter = r.resolve(MorePresenter.self)!
            return resolve
        }
        
        
        
        container.register(MorePresenter.self) { r in
            let resolve = MorePresenter(interactor: r.resolve(MoreInteractorProtocol.self)!, router: r.resolve(MoreRouterProtocol.self)!, view: r.resolve(MoreView.self)!)
            return resolve
        }
        
       
        
        container.register(MoreView.self) { r in
            let resolve = MoreViewController(nibName:  String(describing: MoreViewController.self), bundle: nil)
            return resolve
        }.initCompleted { r, homeView in
            let vc = homeView as! MoreViewController
            vc.presenter = r.resolve(MorePresenter.self)!
        }
    }
}
