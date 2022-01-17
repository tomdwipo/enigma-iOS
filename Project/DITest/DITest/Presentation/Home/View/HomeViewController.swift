//
//  HomeViewController.swift
//  DITest
//
//  Created by Tommy on 14/01/22.
//

import UIKit

protocol HomeView: UIViewController {
    func updateText(text: String)
}


class HomeViewController: UIViewController, HomeView {

    @IBOutlet weak var textLabel: UILabel!
    
    var presenter: HomePresenter!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapped(_ sender: Any) {
      presenter.changeData()
    }
    
    func updateText(text: String){
        self.textLabel.text = text
    }
}



