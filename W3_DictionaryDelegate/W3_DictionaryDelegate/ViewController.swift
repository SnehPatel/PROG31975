//
//  ViewController.swift
//  W3_DictionaryDelegate
//
//  Created by Sneh Patel on 2019-09-20.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lbTitle : UILabel!
    @IBOutlet var lbOp1 : UILabel!
    @IBOutlet var lbOp2 : UILabel!
    @IBOutlet var lbOp3 : UILabel!
    
    @IBAction func unwindToHomeVC(sender : UIStoryboardSegue){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        
        lbTitle.text = mainDelegate.title
        lbOp1.text = mainDelegate.options[0]
        lbOp2.text = mainDelegate.options[1]
        lbOp3.text = mainDelegate.options[2]
        
    }


}

