//
//  MenuItem.swift
//  ReadyDok
//
//  Created by Mac Air on 1/20/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class NavigationItem{
    
    var icon: UIImage?
    var text: String
    
    init?(icon: UIImage, text: String){
        self.text = text
        self.icon = icon
        if(text.isEmpty){
            return nil
        }
    }
}
