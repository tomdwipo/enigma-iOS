//
//  HomeContainerViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class HomeContainerViewController: UIViewController {
 


    @IBOutlet weak var tableView: UITableView!
    
    let titles = ["oke", "dua", "33"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: HomeViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HomeViewCell.self))
    }
}


extension HomeContainerViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:  String(describing: HomeViewCell.self), for: indexPath) as! HomeViewCell
        cell.titleContent.text = titles[indexPath.row]
        return cell
    }
    
}

extension HomeContainerViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 400
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(titles[indexPath.row])
    }
}
