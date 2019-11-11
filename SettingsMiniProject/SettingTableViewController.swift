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
        
        cell.cellDelegate = self
        
        return cell
    }
}

extension SettingTableViewController: SettingCellDelegate {
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        // Need to find what cell was tapped on
        
        // So I can find the setting in the settings array that matches that index
        let setting = SettingController.sharedInstance.setting[indexPath.row]
        // toggle the setting change
        SettingController.sharedInstance.toggleIsOn(for: setting)
        // update view
        cell.updateViews(with: setting)
    }
}
