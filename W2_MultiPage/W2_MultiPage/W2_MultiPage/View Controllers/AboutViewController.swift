//
//  AboutViewController.swift
//  W2_MultiPage
//
//  Created by Sneh Patel on 2019-09-09.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    // Outlet for webkit
    @IBOutlet var wbPage : WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Url variable
        let urlAddress = URL(string: "https://www.google.ca")
        // Connect varible to URLRequest
        let url = URLRequest(url: urlAddress!)
        //Load url
        wbPage.load(url)

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
