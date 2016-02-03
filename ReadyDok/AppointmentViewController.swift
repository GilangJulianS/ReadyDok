//
//  AppointmentViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/21/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class AppointmentViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    var navbarColor = UIColor(red: 67/255, green: 171/255, blue: 153/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil{
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func reschedule(sender: UIButton) {
        performSegueWithIdentifier("open_reschedule", sender: sender)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "open_reschedule"{
            if let rescheduleView = segue.destinationViewController as? RescheduleViewController{
                rescheduleView.type = rescheduleView.TYPE_FROM_DOCTOR
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
