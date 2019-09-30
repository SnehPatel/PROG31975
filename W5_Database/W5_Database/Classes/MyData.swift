//
//  MyData.swift
//  W5_Database
//
//  Created by Sneh Patel on 2019-09-30.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class MyData: NSObject {
    
    var id : Int?
    var name : String?
    var email : String?
    var food : String?
    
    func initWithData(theRow i : Int, theName n : String, theEmail e : String, theFood f : String){
        id = i
        name = n
        email = e
        food = f
    }
    

}
