//
//  SettingController.swift
//  Settings
//
//  Created by Kyle Jennings on 11/11/19.
//  Copyright © 2019 James Pacheco. All rights reserved.
//

import Foundation

class SettingController {
    
    static let sharedInstance = SettingController()
    
    // Create
    let setting: [Setting] = {
        let music = Setting(settingName: "Music", icon: #imageLiteral(resourceName: "music"), isOn: false)
        let books = Setting(settingName: "Books", icon: #imageLiteral(resourceName: "books"), isOn: false)
        let apps = Setting(settingName: "Apps", icon: #imageLiteral(resourceName: "apps"), isOn: false)
        return [music, books, apps]
    }()
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
