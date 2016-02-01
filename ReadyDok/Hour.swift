//
//  Hour.swift
//  ReadyDok
//
//  Created by Mac Air on 2/1/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class Hour{
    
    var value: String
    
    init?(value: String){
        self.value = value
        if value.isEmpty{
            return nil
        }
    }
}
