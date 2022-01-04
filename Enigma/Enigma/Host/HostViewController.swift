//
//  HostViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class HostViewController: UIViewController {

    static func HostView(caller: UIViewController) {
        let vc = HostViewController()
        caller.addChild(vc)
        caller.view.addSubview(vc.view)
        vc.didMove(toParent: caller)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("oje")
        // Do any additional setup after loading the view.
    }


}
