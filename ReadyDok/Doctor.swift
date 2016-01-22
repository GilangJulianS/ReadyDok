//
//  Doctor.swift
//  ReadyDok
//
//  Created by Mac Air on 1/22/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class Doctor{
    
    var image: UIImage!
    var nama: String
    var jabatan: String
    var tempat: String
    var alamat: String
    
    init?(image: UIImage, nama: String, jabatan: String, tempat: String, alamat: String){
        self.image = image
        self.nama = nama;
        self.jabatan = jabatan;
        self.tempat = tempat
        self.alamat = alamat
        if(nama.isEmpty || jabatan.isEmpty || tempat.isEmpty || alamat.isEmpty){
            return nil
        }
    }
}
