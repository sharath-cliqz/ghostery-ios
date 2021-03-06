//
//  HumanWebSettingsTableViewController.swift
//  Client
//
//  Created by Mahmoud Adam on 3/13/18.
//  Copyright © 2018 Cliqz. All rights reserved.
//

import UIKit

class HumanWebSettingsTableViewController: ToggleSubSettingsTableViewController {
    
    
    // MARK:- Abstract methods Implementation
    override func getViewName() -> String {
        return "human_web"
    }
    
    override func getToggles() -> [Bool] {
        return [SettingsPrefs.shared.getHumanWebPref()]
    }
    
    override func getToggleTitles() -> [String] {
        return [self.title ?? ""]
    }
    
    override func getSectionFooters() -> [String] {
        return [NSLocalizedString("Cliqz works with anonymized data of search queries and website visits that have been generated by our community of users. The technology that collects this data to build the web index is called Human Web.", tableName: "Cliqz", comment: "[Settings -> Human Web]Footer text for Fair Blocking section")]
    }
    
    override func saveToggles(isOn: Bool, atIndex: Int) {
        SettingsPrefs.shared.updateHumanWebPref(isOn)
    }
    
}
