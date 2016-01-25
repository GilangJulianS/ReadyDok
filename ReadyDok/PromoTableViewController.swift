//
//  PromoTableViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/25/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class PromoTableViewController: UITableViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    var promos = [Promo]()
    
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
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return promos.count
    }
    
    func loadData(){
        let image = UIImage(named: "doctor")!
        promos += [Promo(image: image, tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung", promo: "Discount 50% for scaling", waktu: "21-30 Desember 2015")!]
        promos += [Promo(image: image, tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung", promo: "Discount 50% for scaling", waktu: "21-30 Desember 2015")!]
        promos += [Promo(image: image, tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung", promo: "Discount 50% for scaling", waktu: "21-30 Desember 2015")!]
        promos += [Promo(image: image, tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung", promo: "Discount 50% for scaling", waktu: "21-30 Desember 2015")!]
        promos += [Promo(image: image, tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung", promo: "Discount 50% for scaling", waktu: "21-30 Desember 2015")!]
        promos += [Promo(image: image, tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung", promo: "Discount 50% for scaling", waktu: "21-30 Desember 2015")!]
        promos += [Promo(image: image, tempat: "Dental Clinic", alamat: "Jl. Kebon Bibit No. 5 Bandung", promo: "Discount 50% for scaling", waktu: "21-30 Desember 2015")!]
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = tableView.dequeueReusableCellWithIdentifier("PromoCell", forIndexPath: indexPath) as! PromoCell
        let promo = promos[row]
        cell.img.image = promo.image
        cell.txtTempat.text = promo.tempat
        cell.txtAlamat.text = promo.alamat
        cell.txtPromo.text = promo.promo
        cell.txtWaktu.text = promo.waktu

        return cell
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
