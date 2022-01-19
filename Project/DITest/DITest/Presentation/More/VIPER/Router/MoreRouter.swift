//
//  MoreRouter.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import Foundation
import UIKit

protocol MoreRouterProtocol {
    func navigateToMorePage(caller: UIViewController)
}

struct MoreRouter: MoreRouterProtocol {
    
    func navigateToMorePage(caller: UIViewController) {
        caller.present(AssemblerManager.nextViewcontroller, animated: true)
    }
    
}
