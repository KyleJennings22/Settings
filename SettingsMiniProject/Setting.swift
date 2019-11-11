//
//  Setting.swift
//  Settings
//
//  Created by Kyle Jennings on 11/11/19.
//  Copyright © 2019 James Pacheco. All rights reserved.
//

import UIKit

class Setting {
    let settingName: String
    let icon: UIImage
    var isOn: Bool
    
    init(settingName: String, icon: UIImage, isOn: Bool) {
        self.settingName = settingName
        self.icon = icon
        self.isOn = isOn
    }
}
