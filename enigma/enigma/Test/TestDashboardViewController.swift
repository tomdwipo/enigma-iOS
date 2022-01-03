//
//  TestDashboardViewController.swift
//  enigma
//
//  Created by Tommy on 03/01/22.
//

import UIKit

class TestDashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = TestViewController()
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
