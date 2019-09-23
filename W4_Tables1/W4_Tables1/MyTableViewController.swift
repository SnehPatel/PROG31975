//
//  MyTableViewController.swift
//  W4_Tables1
//
//  Created by Sneh Patel on 2019-09-23.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Empty Array for data
    var listData : Array<String> = []
    
    // Method 1: How many tables cells are there? typed: numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    // Method 2: Set the row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    // Method 3: This method is called over and over to populate the data, also used when the screen is swiped up or down for cell leaving/entering screen until the tableview is filled.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Dequeue cell - cell leaving the screen
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        // Populate the cell - assign index from array to the cell in tableview
        let rowNum = indexPath.row
        tableCell.textLabel?.text = listData[rowNum]
        
        // Format cell font
        tableCell.textLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        // Add accessory to the right side of cell (little arrow)
        tableCell.accessoryType = .disclosureIndicator
        
        return tableCell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Populate empty array with data
        listData = ["Jays", "Marlies", "Leafs", "Raptors", "FC"]

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
