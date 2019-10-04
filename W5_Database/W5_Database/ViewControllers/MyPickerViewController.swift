//
//  MyPickerViewController.swift
//  W5_Database
//
//  Created by Sneh Patel on 2019-09-30.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class MyPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let mainDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // Component is a key word
    // This is the number of rows, using the number of people to populate the picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mainDelegate.people.count
    }
    
    // This is the number of components in the picker row
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Content to put into the picker row
    // Row number is passed as INT
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mainDelegate.people[row].name
    }
    
    // Not common to do, used to fire a specific row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let alertController = UIAlertController(title: mainDelegate.people[row].email, message: mainDelegate.people[row].food, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
