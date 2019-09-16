//
//  MyData.swift
//  W2_IPad
//
//  Created by Sneh Patel on 2019-09-16.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

// Constructor for the data form: Name and Email 

class MyData: NSObject {
    
    var savedName : String?
    var savedEmail : String?
    
    override init() {
        savedName = "Jim Kirk"
        savedEmail = "jim@kirk.com"
    }
    
    func initWithStuff(theName : String, theEmail: String){
        savedName = theName
        savedEmail = theEmail
    }
    
}
