//
//  ViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/20/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit

class NavigationTableController: UITableViewController {
    
    var reminders = [Reminder]()
    var navItems = [NavigationItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadData()
        configureTableView()
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row < reminders.count{
            return 100
        }else{
            return 70
        }
    }
    
    func configureTableView(){
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count + navItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row < reminders.count{
            let cell = tableView.dequeueReusableCellWithIdentifier("reminderCell", forIndexPath: indexPath) as! ReminderCell
            let reminder = reminders[indexPath.row]
            cell.imgView.image = reminder.imgDoctor
            cell.txtName.text = reminder.doctorName
            cell.txtTime.text = reminder.time
            return cell
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("navigationCell", forIndexPath: indexPath) as! NavigationCell
            let index = indexPath.row - reminders.count
            let navItem = navItems[index]
            cell.imgIcon.image = navItem.icon
            cell.txtName.text = navItem.text
            if index > 2{
                cell.txtCounter.hidden = true
                cell.counterBackground.hidden = true
            }
            return cell
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let row = indexPath.row
        if row < reminders.count{
            // Open Appointment
            performSegueWithIdentifier("open_appointment", sender: nil)
//            reminders.removeAtIndex(row)
//            self.tableView.reloadSections(NSIndexSet(index: 0), withRowAnimation: UITableViewRowAnimation.Top)
        }else if row == reminders.count{
            // Open My Doctors
            performSegueWithIdentifier("open_doctor", sender: nil)
        }else if row == reminders.count + 1{
            // Open My Reminders
            performSegueWithIdentifier("open_reminder", sender: nil)
        }else if row == reminders.count + 2{
            // Open Promo
            performSegueWithIdentifier("open_promo", sender: nil)
        }else if row == reminders.count + 3{
            // Open Help
        }else if row == reminders.count + 4{
            // Open Settings
        }
    }
    
    func loadData(){
        loadReminders()
        let image = UIImage(named: "Image")!
        navItems += [NavigationItem(icon: image, text: "My Doctors")!]
        navItems += [NavigationItem(icon: image, text: "My Reminders")!]
        navItems += [NavigationItem(icon: image, text: "My Promo")!]
        navItems += [NavigationItem(icon: image, text: "My Help")!]
        navItems += [NavigationItem(icon: image, text: "My Settings")!]
    }
    
    func loadReminders(){
        let image = UIImage(named: "Image")!
        reminders += [Reminder(photo: image, name: "drg. Melania N., Sp. KG", time: "Wed, 19 Des 2015 19.00")!]
    }

}

