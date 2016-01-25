//
//  ReminderDetailTableViewCell.swift
//  ReadyDok
//
//  Created by Mac Air on 1/21/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class ReminderDetailTableViewCell: UITableViewCell{

    @IBOutlet weak var imgDoctor: UIImageView!
    @IBOutlet weak var txtJabatan: UILabel!
    @IBOutlet weak var txtNama: UILabel!
    @IBOutlet weak var txtTempat: UILabel!
    @IBOutlet weak var txtWaktu: UILabel!
    @IBOutlet weak var txtStatus: UILabel!
    @IBOutlet weak var btnConfirm: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnReschedule: UIButton!
    var reminderDetail: ReminderDetail?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func cancel(sender: UIButton) {
    
    }
    
    @IBAction func confirm(sender: UIButton) {
        
    }

    
}
