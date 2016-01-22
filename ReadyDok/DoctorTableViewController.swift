//
//  DoctorTableViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/21/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class DoctorTableViewController: UITableViewController {

    var doctors = [Doctor]()
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil{
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        loadData()
    }

    func loadData(){
        let image = UIImage(named: "Image")!
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
        doctors += [Doctor(image: image, nama: "drg. Melania N., Sp. KG", jabatan: "Dokter Gigi", tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung")!]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doctors.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = tableView.dequeueReusableCellWithIdentifier("DoctorTableViewCell", forIndexPath: indexPath) as! DoctorTableViewCell
        let d = doctors[row]
        
        cell.imageDoctor.image = d.image
        cell.txtNama.text = d.nama
        cell.txtJabatan.text = d.jabatan
        cell.txtTempat.text = d.tempat
        cell.txtAlamat.text = d.alamat
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

    @IBAction func addDoctor(sender: UIBarButtonItem) {
        performSegueWithIdentifier("open_search", sender: nil)
    }
    
    @IBAction func unwindToDoctorList(sender: UIStoryboardSegue){
        if let _ = sender.sourceViewController as? DoctorNotFoundViewController{
            
        }
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
