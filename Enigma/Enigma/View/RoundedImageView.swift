//
//  RoundedImageView.swift
//  Enigma
//
//  Created by Tommy on 06/01/22.
//

import UIKit

@IBDesignable
class RoundedImageView: UIImageView {
    
    @IBInspectable
    var cornerRadius: CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
//    
    func setup(){
        layer.cornerRadius = cornerRadius
    }
}
