//
//  RescheduleViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 2/1/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class RescheduleViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var btnOk: UIButton!
    let TYPE_FROM_DOCTOR = 0
    let TYPE_FROM_REMINDER = 1
    var collectionController : HourCollectionViewController!
    var type = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("ReschedulePopupViewController") as! ReschedulePopupViewController
        vc.modalPresentationStyle = .Popover
        vc.preferredContentSize = CGSizeMake(600, 280)
        let popover = vc.popoverPresentationController!
        popover.sourceView = btnOk
        let r = btnOk.bounds
        popover.sourceRect = CGRect(x: r.minX, y: r.minY, width: r.width, height: r.height)
        popover.delegate = self
        popover.permittedArrowDirections = .Unknown
        presentViewController(vc, animated: true, completion: nil)
        if type == TYPE_FROM_DOCTOR{
            performSegueWithIdentifier("reschedule_to_doctor", sender: self)
        }else if type == TYPE_FROM_REMINDER{
            performSegueWithIdentifier("reschedule_to_reminder", sender: self)
        }
    }
    
    @IBAction func cancel(sender: UIButton) {
        if type == TYPE_FROM_DOCTOR{
            performSegueWithIdentifier("reschedule_to_doctor", sender: nil)
        }else if type == TYPE_FROM_REMINDER{
            performSegueWithIdentifier("reschedule_to_reminder", sender: self)
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    func dismiss(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "collection_segue"{
            collectionController = segue.destinationViewController as! HourCollectionViewController
        }
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
