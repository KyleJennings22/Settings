//
//  SettingTableViewController.swift
//  Settings
//
//  Created by Kyle Jennings on 11/11/19.
//  Copyright © 2019 James Pacheco. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.sharedInstance.setting.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        
        let setting = SettingController.sharedInstance.setting[indexPath.row]
        
        cell.updateViews(with: setting)
        
        return cell
    }
}
