//
//  AssemberManager.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject

class AssemblerManager {
 
    static let assembler = Assembler([
        MainAssembly()
    ])
    
    static let viewcontroller = assembler.resolver.resolve(ViewController.self)!
}
