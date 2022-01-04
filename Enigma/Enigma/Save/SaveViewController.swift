//
//  SaveViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class SaveViewController: UIViewController {

    static func SaveView(caller: UIViewController) {
        let vc = SaveViewController()
        caller.addChild(vc)
        caller.view.addSubview(vc.view)
        vc.didMove(toParent: caller)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
