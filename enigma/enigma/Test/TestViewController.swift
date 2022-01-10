//
//  TestViewController.swift
//  enigma
//
//  Created by Tommy on 03/01/22.
//

import UIKit

class TestViewController: UIViewController {
    @IBOutlet weak var testText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.testing(_:)))

        testText.addGestureRecognizer(tap)
        testText.isUserInteractionEnabled = true
print("oke")
        // Do any additional setup after loading the view.
    }

    
    @objc func testing(_ sender: UITapGestureRecognizer){
        print("grsd")
        let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        self.present(vc!, animated: true)
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
