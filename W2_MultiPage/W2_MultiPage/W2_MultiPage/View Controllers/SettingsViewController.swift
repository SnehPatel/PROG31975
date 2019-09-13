//
//  SettingsViewController.swift
//  W2_MultiPage
//
//  Created by Sneh Patel on 2019-09-09.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var lbVolume : UILabel!
    @IBOutlet var slVolume : UISlider!
    
    func updateLabel(){
        let vol = slVolume.value
        let strVol = String(format: "%.0f", vol)
        lbVolume.text = strVol
    }
    
    @IBAction func sliderValSChanged(sender : UISlider){
        updateLabel()
    }

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
