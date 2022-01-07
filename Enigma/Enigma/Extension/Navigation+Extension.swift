//
//  Navigation+Extension.swift
//  Enigma
//
//  Created by Tommy on 06/01/22.
//

import UIKit


extension UIViewController {
    func navigateToHome(_ caller: UIViewController){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateInitialViewController()!
        caller.addChild(vc)
        caller.view.addSubview(vc.view)
        vc.didMove(toParent: caller)
    }
}


extension String {
    func changeDate() -> String{
        return "test"
    }
}

