//
//  HostViewCell.swift
//  Enigma
//
//  Created by Tommy on 05/01/22.
//

import UIKit

class HostViewCell: UICollectionViewCell {

    @IBOutlet weak var baseView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        baseView.backgroundColor = .red
        print(baseView.layer.frame.width)
        baseView.layer.cornerRadius = ( baseView.layer.frame.width)  / 2
        // Initialization code
    }

}
