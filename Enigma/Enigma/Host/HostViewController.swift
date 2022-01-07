//
//  HostViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class HostViewController: UIViewController  {
    @IBOutlet weak var collectionView: UICollectionView!


    static func HostView(caller: UIViewController) {
        let vc = HostViewController()
        caller.addChild(vc)
        caller.view.addSubview(vc.view)
        vc.didMove(toParent: caller)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: String(describing: HostViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: HostViewCell.self))

        collectionView.dataSource = self
        collectionView.delegate = self
        
       // Do any additional setup after loading the view.
    }

}
