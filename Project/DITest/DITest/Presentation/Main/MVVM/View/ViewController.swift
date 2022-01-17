//
//  NewViewController.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import UIKit
import Module_login

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
   
    var viewModel: ViewModel! {
        didSet {
            guard isViewLoaded else { return }
            if oldValue.isChangeData != viewModel.isChangeData {
                self.textLabel.text = viewModel.updateText()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func HomeTapped(_ sender: Any) {
        viewModel.changeData()
    }
    
    @IBAction func newPage(_ sender: Any) {
        present(AssemblerManager.homeViewcontroller, animated: true)
    }
}
