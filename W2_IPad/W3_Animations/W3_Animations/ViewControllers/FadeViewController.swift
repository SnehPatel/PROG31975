//
//  FadeViewController.swift
//  W3_Animations
//
//  Created by Sneh Patel on 2019-09-16.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class FadeViewController: UIViewController {
    
    var fadeLayer : CALayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fadeImage = UIImage(named: "GPSIcon.png")
        
        fadeLayer = .init()
        
        fadeLayer?.contents = fadeImage?.cgImage
        fadeLayer?.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        fadeLayer?.position = CGPoint(x: 200, y: 200)
        
        self.view.layer.addSublayer(fadeLayer!)
        
        let fadeAnimation = CABasicAnimation(keyPath: "opacity")
        fadeAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        fadeAnimation.fromValue = 1.0
        fadeAnimation.toValue = 0.0

        fadeAnimation.isRemovedOnCompletion = false
        fadeAnimation.duration = 3.0
        fadeAnimation.beginTime = 1.0
        fadeAnimation.isAdditive = false
        fadeAnimation.fillMode = CAMediaTimingFillMode.both
        fadeAnimation.repeatCount = Float.infinity
        
        fadeLayer?.add(fadeAnimation, forKey: "MyFadeAnimation")
        
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
