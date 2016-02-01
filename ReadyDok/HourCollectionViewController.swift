//
//  HourCollectionViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 2/1/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit



class HourCollectionViewController: UICollectionViewController {

    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let reuseIdentifier = "HourCell"
    var items = [Hour]()
    var selectedIndex = -1;
    let selectedColor = UIColor(red: 236/255, green: 138/255, blue: 38/255, alpha: 1.0)
    let normalColor = UIColor(red: 71.0/255, green: 183.0/255, blue: 170.0/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.registerClass(HourCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        loadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData(){
        items += [Hour(value: "12.00")!]
        items += [Hour(value: "13.00")!]
        items += [Hour(value: "14.00")!]
        items += [Hour(value: "15.00")!]
        items += [Hour(value: "16.00")!]
        items += [Hour(value: "17.00")!]
        items += [Hour(value: "12.00")!]
        items += [Hour(value: "13.00")!]
        items += [Hour(value: "14.00")!]
        items += [Hour(value: "15.00")!]
        items += [Hour(value: "16.00")!]
        items += [Hour(value: "17.00")!]
        items += [Hour(value: "12.00")!]
        items += [Hour(value: "13.00")!]
        items += [Hour(value: "14.00")!]
        items += [Hour(value: "15.00")!]
        items += [Hour(value: "16.00")!]
        items += [Hour(value: "17.00")!]
        items += [Hour(value: "12.00")!]
        items += [Hour(value: "13.00")!]
        items += [Hour(value: "14.00")!]
        items += [Hour(value: "15.00")!]
        items += [Hour(value: "16.00")!]
        items += [Hour(value: "17.00")!]
        items += [Hour(value: "12.00")!]
        items += [Hour(value: "13.00")!]
        items += [Hour(value: "14.00")!]
        items += [Hour(value: "15.00")!]
        items += [Hour(value: "16.00")!]
        items += [Hour(value: "17.00")!]
        items += [Hour(value: "12.00")!]
        items += [Hour(value: "13.00")!]
        items += [Hour(value: "14.00")!]
        items += [Hour(value: "15.00")!]
        items += [Hour(value: "16.00")!]
        items += [Hour(value: "17.00")!]
        items += [Hour(value: "12.00")!]
        items += [Hour(value: "13.00")!]
        items += [Hour(value: "14.00")!]
        items += [Hour(value: "15.00")!]
        items += [Hour(value: "16.00")!]
        items += [Hour(value: "17.00")!]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let row = indexPath.row
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! HourCell
        cell.txtHour.text = items[row].value
        // Configure the cell
        if row == selectedIndex{
            cell.txtHour.backgroundColor = selectedColor
        }else{
            cell.txtHour.backgroundColor = normalColor
        }
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
        collectionView.reloadData()
    }
    
    override func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = -1
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
