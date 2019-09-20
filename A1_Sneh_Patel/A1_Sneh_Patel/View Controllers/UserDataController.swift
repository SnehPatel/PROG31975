//
//  UserDataController.swift
//  A1_Sneh_Patel
//
//  Created by Sneh Patel on 2019-09-19.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class UserDataController: NSData {
    
    var savedName : String?
    var savedEmail : String?
    
    func initWithStuff(theName : String, theEmail : String){
        savedName = theName
        savedEmail = theEmail
    }

}
