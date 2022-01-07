//
//  HomeViewCell.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class HomeViewCell: UITableViewCell {
    @IBOutlet weak var titleContent: UILabel!
    @IBOutlet weak var subContent: UILabel!
    @IBOutlet weak var imageContent: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.titleContent.textColor = .brown
       
    }
    
  
    
}
