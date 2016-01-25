//
//  PromoCell.swift
//  ReadyDok
//
//  Created by Mac Air on 1/25/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class PromoCell: UITableViewCell {

    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var txtTempat: UILabel!
    @IBOutlet weak var txtAlamat: UILabel!
    @IBOutlet weak var txtPromo: UILabel!
    @IBOutlet weak var txtWaktu: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
