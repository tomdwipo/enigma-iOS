//
//  AssemberManager.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject
import Module_login
class AssemblerManager {
 
    static let assembler = Assembler([
        MainAssembly(),
        ModuleLoginAssembly(),
        HomeAssembly(),
        
        //
        //
        //
        ///
        ////
        ///
    ])
    
    static let viewcontroller = assembler.resolver.resolve(ViewController.self)!
    static let homeViewcontroller = assembler.resolver.resolve(HomeView.self)!

}


