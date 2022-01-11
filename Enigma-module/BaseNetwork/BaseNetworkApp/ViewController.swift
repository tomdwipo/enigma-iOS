//
//  ViewController.swift
//  BaseNetworkApp
//
//  Created by Tommy on 10/01/22.
//

import UIKit
import BaseNetwork

class ViewController: UIViewController {
    @IBOutlet weak var titleTestLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BaseService().search(query: "", page: "1", limit: "10") { data in
            print("data \(data)")
        }
        
//        Testing().postPopular()

        // Do any additional setup after loading the view.
    }


}

