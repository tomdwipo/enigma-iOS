//
//  AssemberManager.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject
import Module_login
import UIKit
class AssemblerManager {
 
    static let container = Container()
  
    static let assembler = Assembler([
        MainAssembly(),
        ModuleLoginAssembly(),
        HomeAssembly(),
        MoreAssembly(),
        NextAssembly(),
        //
        //
        //
        ///
        ////
        ///
    ], container: container)
    
    static let viewcontroller = assembler.resolver.resolve(ViewController.self)!
    static let homeViewcontroller = assembler.resolver.resolve(HomeView.self)!
    static let moreViewcontroller = assembler.resolver.resolve(MoreView.self)!
    static let nextViewcontroller = assembler.resolver.resolve(NextViewController.self)!
 
    
    
    @available(iOS 13.0, *)
    static let assemblerIOS13 = Assembler([
        GoAssembly(),

    ], container: container)
    
    static func goViewcontroller() -> UIViewController {
        if #available(iOS 13.0, *) {
           return assemblerIOS13.resolver.resolve(GoViewController.self)!
        }else{
            return nextViewcontroller
        }
    }

    

}


