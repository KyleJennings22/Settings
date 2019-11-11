//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Kyle Jennings on 11/11/19.
//  Copyright © 2019 James Pacheco. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: class {
    func settingSwitchTapped(for cell: SettingTableViewCell)
    
}

class SettingTableViewCell: UITableViewCell {
    
    // MARK: - OUTLETS
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!

    // Declare the delegate
    weak var cellDelegate: SettingCellDelegate?
    
    // MARK: - ACTIONS
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
        cellDelegate?.settingSwitchTapped(for: self)
    }
    
    // MARK: - CUSTOM FUNCTIONS
    
    func updateViews(with setting: Setting) {
        settingImageView.image = setting.icon
        settingNameLabel.text = setting.settingName
        settingSwitch.isOn = setting.isOn
        
        self.backgroundColor = setting.isOn ? .cyan : .white
    }
}
