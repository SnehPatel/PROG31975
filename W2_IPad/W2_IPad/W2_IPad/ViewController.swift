//
//  ViewController.swift
//  W2_IPad
//
//  Created by Sneh Patel on 2019-09-13.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, UITextFieldDelegate {
    
    @IBOutlet var tfName : UITextField!
    @IBOutlet var tfEmail : UITextField!
    
    @IBOutlet var lbName : UILabel!
    @IBOutlet var lbEmail : UILabel!
    
    @IBOutlet var webView : WKWebView!
    @IBOutlet var activity : UIActivityIndicatorView!
    
    func doTheUpdate(){
        let data : MyData = .init()
        data.initWithStuff(theName: tfName.text!, theEmail: tfEmail.text!)
        
        lbName.text = data.savedName
        lbEmail.text = data.savedEmail
    }
    
    // Alert box
    @IBAction func updateLabels(sender : UIButton){
        let alert = UIAlertController(title: "Warning", message: "Are you sure?", preferredStyle: .alert)
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        let yesAction = UIAlertAction(title: "Yes", style: .default, handler: {
            (alert : UIAlertAction!) in
            self.doTheUpdate()
            self.dismiss(animated: true, completion: nil)
            
        })
        alert.addAction(yesAction)
        alert.addAction(noAction)
        present(alert, animated: true)
    }
    
    // Used to close keyboard after completing input
    // Connect from storyboard > select textView > drag delegate to yellow circle
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    // Used for the loading icon, start animating
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.isHidden = false
        activity.startAnimating()
    }
    
    // Stop animating loading icon
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.isHidden = true
        activity.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if UIDevice.current.userInterfaceIdiom == .pad{
            let urlAddress = URL(string: "http://www.bluejays.com")
            let url = URLRequest(url: urlAddress!)
            webView.load(url)
            // self = this (java)
            webView.navigationDelegate = self
        }else{
            webView.isHidden = true
            activity.isHidden = true
        }
        
    }

}

