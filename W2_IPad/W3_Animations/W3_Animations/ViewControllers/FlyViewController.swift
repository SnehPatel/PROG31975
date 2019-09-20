//
//  FlyViewController.swift
//  W3_Animations
//
//  Created by Sneh Patel on 2019-09-16.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class FlyViewController: UIViewController {
    
    var flyLayer : CALayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Paste Item to the screen
        let flyImage = UIImage(named: "CameraIcon.png")
        flyLayer = CALayer.init()
        
        flyLayer?.contents = flyImage?.cgImage
        flyLayer?.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        flyLayer?.position = CGPoint(x: 0, y: 0)
        self.view.layer.addSublayer(flyLayer!)
        
        let moveAnimation = CABasicAnimation(keyPath: "position")
        
        moveAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        moveAnimation.fromValue = NSValue.init(cgPoint: CGPoint(x: 0, y: 0))
        moveAnimation.toValue = NSValue.init(cgPoint: CGPoint(x: 700, y: 500))
        moveAnimation.isRemovedOnCompletion = false
        moveAnimation.repeatCount = Float.infinity
        moveAnimation.duration = 3.0
        
        flyLayer?.add(moveAnimation, forKey: "MyMoveAnimation")

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
