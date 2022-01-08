//
//  BaseCollectionViewCell.swift
//  Enigma
//
//  Created by Tommy on 07/01/22.
//

import UIKit

class BaseCollectionViewCell: UITableViewCell {
    @IBOutlet weak var baseCollectionView: UICollectionView!
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        
        self.baseCollectionView.register(UINib(nibName: String(describing: ContentCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: ContentCollectionViewCell.self))
        

        self.baseCollectionView.dataSource = self
        self.baseCollectionView.delegate = self
    }
}

extension BaseCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ContentCollectionViewCell.self), for: indexPath) as! ContentCollectionViewCell
        cell.contentView.backgroundColor = .white
        return cell
    
    }
    
    
}


extension BaseCollectionViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width / 2) - 20
        return CGSize(width: width, height: 50)
    }
}
