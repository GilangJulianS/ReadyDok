//
//  NavigationCell.swift
//  ReadyDok
//
//  Created by Mac Air on 1/20/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class NavigationCell: UITableViewCell {

    
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var txtName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
