//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Kyle Jennings on 11/11/19.
//  Copyright © 2019 James Pacheco. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    // MARK: - OUTLETS
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!

    // MARK: - ACTIONS
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
        if settingSwitch.isOn {
            self.backgroundColor = .cyan
        } else {
            self.backgroundColor = .white
        }
    }
    
    // MARK: - CUSTOM FUNCTIONS
    
    func updateViews(with setting: Setting) {
        settingImageView.image = setting.icon
        settingNameLabel.text = setting.settingName
        settingSwitch.isOn = setting.isOn
        
        if setting.isOn {
            self.backgroundColor = .cyan
        } else {
            self.backgroundColor = .white
        }
    }
}
