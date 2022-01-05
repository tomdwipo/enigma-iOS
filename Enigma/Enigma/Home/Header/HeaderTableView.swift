//
//  HeaderTableView.swift
//  Enigma
//
//  Created by Tommy on 05/01/22.
//

import UIKit

class HeaderTableView: UITableViewHeaderFooterView {
    let titleLabel = UILabel()
    let subTitleLabel = UILabel()
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContent()  {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(subTitleLabel)
        
        NSLayoutConstraint.activate([
          
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            subTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            
        ])
        
        
        titleLabel.text = "Title"
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
     
        subTitleLabel.text = "subTitle"
        subTitleLabel.font = UIFont.systemFont(ofSize: 12, weight: .light)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
