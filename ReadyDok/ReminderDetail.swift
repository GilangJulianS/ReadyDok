//
//  ReminderDetail.swift
//  ReadyDok
//
//  Created by Mac Air on 1/21/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class ReminderDetail{
    
    var image: UIImage!
    var nama: String
    var jabatan: String
    var tempat: String
    var waktu: String
    var status: String
    
    init?(image: UIImage!, nama: String, jabatan: String, tempat: String, waktu: String, status: String){
        self.image = image
        self.nama = nama
        self.jabatan = jabatan
        self.tempat = tempat
        self.waktu = waktu
        self.status = status
        if(nama.isEmpty || jabatan.isEmpty || tempat.isEmpty || waktu.isEmpty || status.isEmpty){
            return nil
        }
    }
}
