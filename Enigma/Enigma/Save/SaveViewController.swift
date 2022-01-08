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
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        
        self.tableView.register(UINib(nibName: String(describing: BaseCollectionViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: BaseCollectionViewCell.self))
        
        
        // Do any additional setup after loading the view.
    }
}

extension SaveViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BaseCollectionViewCell.self), for: indexPath) as! BaseCollectionViewCell
        cell.baseCollectionView.backgroundColor = indexPath.row == 0 ? .red : .darkGray
        return cell
    }
    
    
}

// MARK: - UITABLEVIEW DELEGATE
extension SaveViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return tableView.frame.height / 2
        }
        return 500
    }
}
