//
//  ViewController.swift
//  W1_Calculator
//
//  Created by Sneh Patel on 2019-09-06.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHello : UILabel!
    
    @IBAction func clickMe(sender : Any){
        lblHello.text = "Let's Begin!"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

