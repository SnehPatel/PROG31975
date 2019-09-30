//
//  ViewController.swift
//  W5_Database
//
//  Created by Sneh Patel on 2019-09-30.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var lbTable : UILabel!
    @IBOutlet var lbPicker : UILabel!
    
    @IBOutlet var tbName : UITextField!
    @IBOutlet var tbEmail : UITextField!
    @IBOutlet var tbFood : UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    @IBAction func unwindToHomeVC(sender : UIStoryboardSegue){
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first!
        let touchPoint : CGPoint = touch.location(in: self.view)
        
        let tableFrame : CGRect = lbTable.frame
        let pickerFrame : CGRect = lbPicker.frame
        
        if tableFrame.contains(touchPoint){
            performSegue(withIdentifier: "HomeSegueToTable", sender: self)
        }
        
        if pickerFrame.contains(touchPoint){
            performSegue(withIdentifier: "HomeSegueToPicker", sender: self)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

