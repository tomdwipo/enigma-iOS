//
//  HostContainerViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class HostContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        HostViewController.HostView(caller: self)
    }

}
