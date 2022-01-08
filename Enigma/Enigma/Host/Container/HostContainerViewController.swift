//
//  HostContainerViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class HostContainerViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: String(describing: HostViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: HostViewCell.self))
       
    }

}


extension HostContainerViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 530
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: HostViewCell.self), for: indexPath) as! HostViewCell
//        cell.contentView.backgroundColor = .red
        return cell
    }
   
}

extension HostContainerViewController: UICollectionViewDelegateFlowLayout , UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 82 , height: 82)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        navigationController?.pushViewController(HostViewController(), animated: true)
    }
    
}
