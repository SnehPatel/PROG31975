//
//  GameViewController.swift
//  W2_MultiPage
//
//  Created by Sneh Patel on 2019-09-09.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet var sgDiff : UISegmentedControl!
    
    @IBOutlet var lbDiff : UILabel!
    @IBOutlet var lbLevel : UILabel!
    @IBOutlet var lbScore : UILabel!
    @IBOutlet var lbTime : UILabel!
    
    func updateDiff(){
        let diff = sgDiff.selectedSegmentIndex
        
        if diff == 0{
            lbDiff.text = "Difficulty: Easy"
        } else if diff == 1{
            lbDiff.text = "Difficulty: Medium"
        }else{
            lbDiff.text = "Difficulty: Hard"
        }
    }
    
    @IBAction func segmentDidChange(sender : UISegmentedControl){
        updateDiff()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiff()
        
        lbLevel.text = "Level 5"
        lbScore.text = "Score: 246,242"
        lbTime.text = "Time Left: 54"

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
