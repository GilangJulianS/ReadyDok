//
//  ProfileView.swift
//  ReadyDok
//
//  Created by Mac Air on 2/3/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    var view: UIView!
    @IBOutlet weak var txtEducation: UILabel!
    @IBOutlet weak var txtFee: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView{
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "ProfileView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }

}
