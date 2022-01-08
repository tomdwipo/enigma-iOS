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
        vc?.modalPresentationStyle = .overCurrentContext
        caller.present(vc!, animated: true)
        
        
        //Present
      //  caller.dismiss(animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        
        
       // caller.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
        
        
        //navigation
       // caller.navigationController?.popViewController(animated: <#T##Bool#>)
    }
}


extension String {
    func changeDate() -> String{
        return "test"
    }
}

