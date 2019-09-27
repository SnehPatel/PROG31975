//
//  ChooseSiteViewController.swift
//  W4_Tables2
//
//  Created by Sneh Patel on 2019-09-27.
//  Copyright © 2019 Sneh Patel. All rights reserved.
//

import UIKit

// import TableViewDataSource and UI TableViewDelegate
class ChooseSiteViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var listData = ["Jays",
                    "Leafs",
                    "Raptors",
                    "Marlies",
                    "FC"]
    
    var siteData = ["http://www.bluejays.com",
                    "http://www.torontomapleleafs.com",
                    "http://www.torontoraptors.com",
                    "http://www.marlies.ca",
                    "http://www.torontofc.ca"]
    
    var imageData = ["jays.jpg",
                     "leafs.png",
                     "raptors.jpg",
                     "marlies.jpeg",
                     "fc.png"]
    
    // Method 1: numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    // Method 2: heightForRowAt
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    // Method 3: cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        // Custom Cell
        let tableCell : SiteCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SiteCell ?? SiteCell(style: .default, reuseIdentifier: "cell")
        
        let rowNum = indexPath.row
        tableCell.primaryLabel.text = listData[rowNum]
        tableCell.secondaryLabel.text = siteData[rowNum]
        tableCell.myImageView.image = UIImage(named: imageData[rowNum])
        
        return tableCell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
