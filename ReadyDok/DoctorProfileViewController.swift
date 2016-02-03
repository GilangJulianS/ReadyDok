//
//  DoctorProfileViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 2/3/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class DoctorProfileViewController: UIViewController {

    @IBOutlet weak var txtAlamat: UITextView!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    private var constraints = [NSLayoutConstraint]()
    private var subBoxView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addBoxView(0)
        // Do any additional setup after loading the view.
        scrollView.contentSize.height = 1700
    }
    
    func addBoxView(segmentIndex: Int){
        subBoxView.removeFromSuperview()
        if segmentIndex == 0{
            subBoxView = ProfileView(frame: CGRect())
            let profileView = subBoxView as! ProfileView
            setupProfile(profileView)
            subBoxView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.addSubview(subBoxView)
            addConstraint(subBoxView)
        }else if segmentIndex == 1{
            subBoxView = ReviewView(frame: CGRect())
            subBoxView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.addSubview(subBoxView)
            addConstraint(subBoxView)
        }
    }
    
    func setupProfile(view: ProfileView){
        view.txtEducation.text = "Universitas Indonesia"
        view.txtFee.text = "Rp 200.000"
    }
    
    func addConstraint(subView: UIView){
        constraints.removeAll()
        
        let leadingConstraint = NSLayoutConstraint(item: subView, attribute: .Leading, relatedBy: .Equal, toItem: segment, attribute: .Leading, multiplier: 1, constant: 0)
        let trailingConstraint = NSLayoutConstraint(item: subView, attribute: .Trailing, relatedBy: .Equal, toItem: segment, attribute: .Trailing, multiplier: 1, constant: 0)
        let topConstraint = NSLayoutConstraint(item: subView, attribute: .Top, relatedBy: .Equal, toItem: segment, attribute: .Bottom, multiplier: 1, constant: 1)
        let heightConstraint = NSLayoutConstraint(item: subView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 280)
        let bottomConstraint = NSLayoutConstraint(item: subView, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: 20)
        constraints += [leadingConstraint, trailingConstraint, topConstraint, heightConstraint, bottomConstraint]
        self.view.addConstraints(constraints)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSegmentChanged(sender: UISegmentedControl) {
        addBoxView(sender.selectedSegmentIndex)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
