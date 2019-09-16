//
//  SpinViewController.swift
//  W3_Animations
//
//  Created by Sneh Patel on 2019-09-16.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

// Import Av Foundation framework
import AVFoundation

class SpinViewController: UIViewController {
    
    @IBOutlet var volSlider : UISlider!
    var soundPlayer : AVAudioPlayer?
    
    @IBAction func volumeDidChange(sender : UISlider){
        soundPlayer?.volume = volSlider.value
    }
    
    // Executes before viewDidLoad, to start playing music
    override func viewWillAppear(_ animated: Bool) {
        let soundURL = Bundle.main.path(forResource: "song1", ofType: "mp3")
        let url = URL.init(fileURLWithPath: soundURL!)
        soundPlayer = try! AVAudioPlayer.init(contentsOf: url)
        
        // Set starting time of MP3
        soundPlayer?.currentTime = 0
        // Set Default Volume
        soundPlayer?.volume = volSlider.value
        // -1 = loop sound file
        soundPlayer?.numberOfLoops = -1
        // Play sound
        soundPlayer?.play()
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
