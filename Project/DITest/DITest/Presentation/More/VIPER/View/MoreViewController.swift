//
//  MoreViewController.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import UIKit

protocol MoreView: UIViewController {
    func updateText(text: String)

}


class MoreViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    var presenter: MorePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapped(_ sender: Any) {
        presenter?.changeData()
    }
    
    @IBAction func nextPage(_ sender: Any) {
        presenter?.navigateToNextPage(caller: self)
    }
}

extension MoreViewController: MoreView {
    func updateText(text: String) {
        self.textLabel.text = text
    }
}
