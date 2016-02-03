//
//  CancelAppointmentPopupViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/25/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class CancelAppointmentViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelAppointment(sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("CanceledAppointmentPopupViewController") as! CanceledAppointmentPopupViewController
        vc.modalPresentationStyle = .Popover
        vc.preferredContentSize = CGSizeMake(600, 250)
        let popover = vc.popoverPresentationController!
        popover.sourceView = view
        let r = view.bounds
        popover.sourceRect = CGRect(x: r.minX, y: r.minY + 100, width: 0, height: 0)
        popover.delegate = self
        popover.permittedArrowDirections = .Up
        presentViewController(vc, animated: true, completion: nil)
        
//        dismissViewControllerAnimated(true, completion: nil)
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
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
