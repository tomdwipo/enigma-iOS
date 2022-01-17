//
//  File.swift
//  
//
//  Created by Tommy on 14/01/22.
//

import Foundation
import Swinject

public class ModuleLoginAssembly: Assembly {
    public init(){
        
    }
    public func assemble(container: Container) {
        container.register(LoginNetwork.self) { _ in LoginNetworkImpl() }
        container.register(LoginRepository.self) { r in LoginRepositoryImpl(network: r.resolve(LoginNetwork.self)!) }
        container.register(GetMessageUseCase.self) { r in
            let usecase = GetMessageUseCase(repository: r.resolve(LoginRepository.self)!)
            return usecase
        }
    }
}


public class SetupModuleLogin {
    static let assembler = Assembler([
        ModuleLoginAssembly()
    ])
    
    public static let usecase = assembler.resolver.resolve(GetMessageUseCase.self)!
    //
    //
    //
    //
}
