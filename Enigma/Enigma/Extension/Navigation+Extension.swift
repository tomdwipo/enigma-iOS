//
//  Navigation+Extension.swift
//  Enigma
//
//  Created by Tommy on 06/01/22.
//

import UIKit


extension UIViewController {
    func navigateToHome(_ caller: UIViewController){
        
        print("navigation:")
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateInitialViewController()
        caller.present(vc!, animated: true)
    }
}


extension String {
    func changeDate() -> String{
        return "test"
    }
}

