//
//  GoViewController.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import UIKit
import Combine

@available(iOS 13.0, *)
class GoViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textlabel: UILabel!

    var subsribe = Set<AnyCancellable>()
    
    var viewModel: GoViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel
            .$textResult
            .assign(to: \.text!, on: textlabel)
            .store(in: &subsribe)
        
        viewModel
            .$textResult
            .sink { result in
            self.textlabel.text = result
            }
            .store(in: &subsribe)
        
    }

    @IBAction func tapped(_ sender: Any) {
        viewModel.changeData()
    }
   
}
