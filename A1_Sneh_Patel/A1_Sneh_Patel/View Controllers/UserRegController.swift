//
//  UserRegController.swift
//  A1_Sneh_Patel
//
//  Created by Sneh Patel on 2019-09-19.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class UserRegController: UIViewController, UITextFieldDelegate {
    
    // Assign variables
    @IBOutlet var lbAge : UILabel!
    @IBOutlet var slAge : UISlider!
    @IBOutlet var lblText : UILabel!
    
    @IBOutlet var tfName : UITextField!
    @IBOutlet var tfEmail : UITextField!
    
    // Return button the the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    // Add alert box to submit button
    @IBAction func submit(sender : UIButton){
        
        let alert = UIAlertController(title: "Greetings " + tfName.text! + "!", message: "Please confirm your email: " + tfEmail.text!, preferredStyle: .alert)
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        let yesAction = UIAlertAction(title: "Yes", style: .default, handler:{
            (alert : UIAlertAction!) in
            self.dismiss(animated: true, completion: nil)
            
        })
        alert.addAction(yesAction)
        alert.addAction(noAction)
        present(alert, animated: true)
    }
    
    // Update the Age label based on the slider
    func updateLabel(){
        let age = slAge.value
        let strAge = String(format: "%0.f" ,age)
        lbAge.text = strAge
    }
    
    // Add function to slider
    @IBAction func sliderValSChanged(sender : UISlider){
        updateLabel()
    }
    
    // Add the update function to load with view
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabel()

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
