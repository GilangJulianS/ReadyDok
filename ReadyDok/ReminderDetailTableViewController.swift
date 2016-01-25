//
//  ReminderDetailTableViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/21/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class ReminderDetailTableViewController: UITableViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    var reminderDetails = [ReminderDetail]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
        
        if self.revealViewController() != nil{
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminderDetails.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = tableView.dequeueReusableCellWithIdentifier("ReminderDetailTableViewCell", forIndexPath: indexPath) as! ReminderDetailTableViewCell
        let rd = reminderDetails[row]
        cell.imgDoctor.image = rd.image
        cell.txtNama.text = rd.nama
        cell.txtJabatan.text = rd.jabatan
        cell.txtTempat.text = rd.tempat
        cell.txtStatus.text = "Status: " + rd.status
        cell.txtWaktu.text = rd.waktu
        cell.btnConfirm.addTarget(self, action: "confirmReminder:", forControlEvents: .TouchUpInside)
        cell.btnConfirm.tag = row
        return cell
    }
    
    func confirmReminder(sender: UIButton){
        reminderDetails.removeAtIndex(sender.tag)
        self.tableView.reloadData()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("ConfirmAppointmentPopupViewController") as! ConfirmAppointmentPopupViewController
        vc.modalPresentationStyle = .Popover
        vc.preferredContentSize = CGSizeMake(600, 300)
        let popover = vc.popoverPresentationController!
        popover.sourceView = sender
        let r = tableView.bounds
        popover.sourceRect = CGRect(x: r.minX, y: r.minY, width: 0, height: 0)
        popover.delegate = self
        popover.permittedArrowDirections = .Up
        presentViewController(vc, animated: true, completion: nil)

    }
    
    func loadData(){
        let img = UIImage(named: "doctor")!
        reminderDetails += [ReminderDetail(image: img, nama: "1drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "2drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "3drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "4drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "5drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "6drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "7drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "8drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "9drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "10drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        reminderDetails += [ReminderDetail(image: img, nama: "11drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", waktu: "Wed, 19 Dec 2015 - 19.00", status: "Pending")!]
        
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    func dismiss(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
