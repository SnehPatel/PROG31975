//
//  AppDelegate.swift
//  W5_Database
//
//  Created by Sneh Patel on 2019-09-30.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit
import SQLite3

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var databaseName : String = "MyDatabase.db"
    var databasePath : String = ""
    var people : [MyData] = []


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Point to the db file
        let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        let documentDir = documentPath[0]
        databasePath = documentDir.appending("/" + databaseName)
        
        checkAndCreateDatabase()
        readDataFromDatabase()
        
        return true
    }
    
    func readDataFromDatabase(){
        people.removeAll()
        var db : OpaquePointer? = nil
        
        // Open a connection to the DB
        if sqlite3_open(self.databasePath, &db) == SQLITE_OK{
            var queryStatement : OpaquePointer? = nil
            var queryStatementString : String = "select * from entries"
            
            if sqlite3_prepare_v2(db, queryStatementString, -1, &queryStatement, nil) == SQLITE_OK{
                while sqlite3_step(queryStatement) == SQLITE_ROW{
                    let id : Int = Int(sqlite3_column_int(queryStatement, 0))
                    let cName = sqlite3_column_text(queryStatement, 1)
                    let cEmail = sqlite3_column_text(queryStatement, 2)
                    let cFood = sqlite3_column_text(queryStatement, 3)
                    
                    let name = String(cString: cName!)
                    let email = String(cString: cEmail!)
                    let food = String(cString: cFood!)
                    
                    let data : MyData = .init()
                    data.initWithData(theRow: id, theName: name, theEmail: email, theFood: food)
                    people.append(data)
                    
                    print("Query result: ")
                    print("\(id) | \(name) | \(email) | \(food)")
                }
                sqlite3_finalize(queryStatement)
                
            }else {
                print("SELECT statement could not be prepared!")
            }
            sqlite3_close(db)
            
        }else {
            print("Unable to open database!")
        }
    }
    
    func checkAndCreateDatabase(){
        var success = false
        let fileManager = FileManager.default
        
        success = fileManager.fileExists(atPath: databasePath)
        
        if success{
            return
        }
        
        // Location of where all the resources files are images, database, sounds
        let databasePathFromApp = Bundle.main.resourcePath?.appending("/" + databaseName)
        
        try? fileManager.copyItem(atPath: databasePathFromApp!, toPath: databasePath)
        
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

