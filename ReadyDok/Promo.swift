//
//  Promo.swift
//  ReadyDok
//
//  Created by Mac Air on 1/25/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class Promo{
    
    var image: UIImage!
    var tempat: String
    var alamat: String
    var promo: String
    var waktu: String
    
    init?(image: UIImage, tempat: String, alamat: String, promo: String, waktu: String){
        self.image = image
        self.tempat = tempat
        self.alamat = alamat
        self.promo = promo
        self.waktu = waktu
        if(tempat.isEmpty || alamat.isEmpty || promo.isEmpty || waktu.isEmpty){
            return nil
        }
    }
}
