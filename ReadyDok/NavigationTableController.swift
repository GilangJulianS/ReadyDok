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
            let navItem = navItems[indexPath.row - reminders.count]
            cell.imgIcon.image = navItem.icon
            cell.txtName.text = navItem.text
            return cell
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

