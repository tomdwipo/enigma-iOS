//
//  ViewController.swift
//  enigma
//
//  Created by Tommy on 03/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet private(set) var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: Bundle(for: TableViewCell.self)), forCellReuseIdentifier: String(describing: TableViewCell.self))
        tableView.rowHeight = 44
        // Do any additional setup after loading the view.
    }

}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self), for: indexPath) as! TableViewCell
        cell.contentLabel.text = "Testing"
        return cell
    }
}

