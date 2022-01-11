//
//  ViewController.swift
//  BaseNetworkApp
//
//  Created by Tommy on 10/01/22.
//

import UIKit
import BaseNetwork

class ViewController: UIViewController {

    @IBOutlet weak var roleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let test = Testing()
        
        test.search(resultResponse: { role in
            print("oke role \(role)")
            self.roleLabel.text = "role \(role)"
        })
        // Do any additional setup after loading the view.
    }


}

