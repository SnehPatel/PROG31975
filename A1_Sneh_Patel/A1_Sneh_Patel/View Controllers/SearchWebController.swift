//
//  SearchWebController.swift
//  A1_Sneh_Patel
//
//  Created by Sneh Patel on 2019-09-19.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit
import WebKit

class SearchWebController: UIViewController, WKNavigationDelegate {
    
    
    // Assign variable for webView
    @IBOutlet var wbPage : WKWebView!
    @IBOutlet var activity : UIActivityIndicatorView!
    
    // Start animating activity indicator
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.isHidden = false
        activity.startAnimating()
    }
    
    // Stop animating indicator
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.isHidden = true
        activity.stopAnimating()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Url variable
        let urlAddress = URL(string: "https://www.google.ca")
        // Connect varible to URLRequest
        let url = URLRequest(url: urlAddress!)
        //Load url
        wbPage.load(url)
        wbPage.navigationDelegate = self

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
