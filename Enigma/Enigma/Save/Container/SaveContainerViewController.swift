//
//  SaveContainerViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class SaveContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SaveViewController.SaveView(caller: self)
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
