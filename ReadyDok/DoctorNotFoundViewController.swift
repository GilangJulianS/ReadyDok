//
//  DoctorNotFoundViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/23/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class DoctorNotFoundViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    @IBOutlet weak var txtTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSubmitClicked(sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("AddSuggestionPopupViewController") as! AddSuggestionPopupViewController
        vc.modalPresentationStyle = .Popover
        vc.preferredContentSize = CGSizeMake(600, 300)
        let popover = vc.popoverPresentationController!
        popover.sourceView = txtTitle
        let r = txtTitle.bounds
        popover.sourceRect = CGRect(x: r.minX, y: r.minY, width: r.width, height: r.height)
        popover.delegate = self
        popover.permittedArrowDirections = .Up
        presentViewController(vc, animated: true, completion: nil)
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    func dismiss(){
        self.dismissViewControllerAnimated(true, completion: nil)
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
