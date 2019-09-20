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
    
    var spinLayer : CALayer?
    
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
    
    // Stop playing sound on leaving screen
    override func viewDidDisappear(_ animated: Bool) {
        soundPlayer?.stop()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let spinImage = UIImage(named: "SeachIcon.png")
        spinLayer = CALayer.init()
        spinLayer?.contents = spinImage?.cgImage
        spinLayer?.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        spinLayer?.position = CGPoint(x: 200, y: 200)
        
        self.view.layer.addSublayer(spinLayer!)
        
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        //rotateAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        rotateAnimation.fromValue = 0
        rotateAnimation.toValue = 2 * Double.pi
        rotateAnimation.isRemovedOnCompletion = false
        rotateAnimation.duration = 1.0
        rotateAnimation.repeatCount = Float.infinity
        spinLayer?.add(rotateAnimation, forKey: "MyRotationAnimation")
        
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
