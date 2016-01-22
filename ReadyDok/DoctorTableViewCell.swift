//
//  DoctorTableViewCell.swift
//  ReadyDok
//
//  Created by Mac Air on 1/22/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class DoctorTableViewCell: UITableViewCell {

    @IBOutlet weak var imageDoctor: UIImageView!
    @IBOutlet weak var txtJabatan: UILabel!
    @IBOutlet weak var txtNama: UILabel!
    @IBOutlet weak var txtTempat: UILabel!
    @IBOutlet weak var txtAlamat: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
