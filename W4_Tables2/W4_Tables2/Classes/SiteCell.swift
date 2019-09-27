//
//  SiteCell.swift
//  W4_Tables2
//
//  Created by Sneh Patel on 2019-09-27.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class SiteCell: UITableViewCell {
    
    let primaryLabel = UILabel()
    let secondaryLabel = UILabel()
    let myImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        primaryLabel.textAlignment = .left
        primaryLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        primaryLabel.textColor = .black
        primaryLabel.backgroundColor = .clear
        
        secondaryLabel.textAlignment = .left
        secondaryLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        secondaryLabel.textColor = .blue
        secondaryLabel.backgroundColor = .clear
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(primaryLabel)
        contentView.addSubview(secondaryLabel)
        contentView.addSubview(myImageView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
