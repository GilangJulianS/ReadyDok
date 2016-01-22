//
//  AddDoctorViewController.swift
//  ReadyDok
//
//  Created by Mac Air on 1/22/16.
//  Copyright © 2016 gilang. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

class AddDoctorViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var formSpecialty: UITextField!
    @IBOutlet weak var formNama: UITextField!
    @IBOutlet weak var formLocation: UITextField!
    @IBOutlet weak var checkbox: UIButton!
    var useMyLocation = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formSpecialty.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        openSpecialtyPicker(textField)
        return false
    }
    
    func openSpecialtyPicker(sender: UITextField) {
        
        let items = ["Dokter Umum", "Dokter Gigi", "Spesialis Anak", "Spesialis Penyakit Dalam"]
        
        ActionSheetStringPicker.showPickerWithTitle("Select Specialty", rows: items, initialSelection: 0, doneBlock: {
            picker, value, index in
            self.formSpecialty.text =  "\(index)"
            
            return
            }, cancelBlock: {ActionStringCancelBlock in return }, origin: sender)
    }
    
    @IBAction func onCheckboxClicked(sender: UIButton) {
        if useMyLocation{
            useMyLocation = false
            sender.selected = false
        }else{
            useMyLocation = true
            sender.selected = true
        }
    }
    
    @IBAction func onCancelClicked(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func onSearchClicked(sender: UIButton) {
        if formNama.text == nil || formNama.text == ""{
            performSegueWithIdentifier("open_doctor_empty", sender: sender)
        }else{
            performSegueWithIdentifier("open_doctor_result", sender: sender)
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
