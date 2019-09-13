//
//  ViewController.swift
//  W2_IPad
//
//  Created by Sneh Patel on 2019-09-13.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var webView : WKWebView!
    @IBOutlet var activity : UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlAddress = URL(string: "http://www.cnn.com")
        let url = URLRequest(url: urlAddress!)
        webView.load(url)
        
    }


}

