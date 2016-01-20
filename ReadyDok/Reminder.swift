//
//  Reminder.swift
//  ReadyDok
//
//  Created by Mac Air on 1/20/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class Reminder{
    
    var imgDoctor : UIImage?
    var doctorName : String
    var time : String
    
    init?(photo: UIImage, name: String, time: String){
        self.imgDoctor = photo
        self.doctorName = name
        self.time = time
        if(name.isEmpty || time.isEmpty){
            return nil
        }
    }
}
