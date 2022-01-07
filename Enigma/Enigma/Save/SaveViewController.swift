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

        self.tableView.register(UINib(nibName: String(describing: CollectionViewCell.self), bundle: nil), forCellReuseIdentifier:  String(describing: CollectionViewCell.self))

    }

}

extension SaveViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: String(describing: CollectionViewCell.self), for: indexPath) as! CollectionViewCell
        cell.collectionView.dataSource = self
        cell.collectionView.delegate = self

        cell.collectionView.register(UINib(nibName: String(describing: SaveCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: SaveCollectionViewCell.self))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
}


extension SaveViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SaveCollectionViewCell.self), for: indexPath) as! SaveCollectionViewCell
        cell.contentView.backgroundColor = .red
        return cell
    }
    
    
}
