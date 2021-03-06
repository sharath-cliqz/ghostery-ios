//
//  CliqzTabToolbar.swift
//  Client
//
//  Created by Mahmoud Adam on 3/27/18.
//  Copyright © 2018 Mozilla. All rights reserved.
//

import UIKit

class CliqzTabsButton: ToolbarButton {
    
    func updateTabCount(_ count: Int, animated: Bool = true) {
        // we don't show count in our tabs button
    }
}

class CliqzTabToolbarHelper: TabToolbarHelper {

    override init(toolbar: TabToolbarProtocol) {
        super.init(toolbar: toolbar)
        toolbar.backButton.setImage(UIImage.templateImageNamed("cliqz-nav-back"), for: .normal)
        toolbar.forwardButton.setImage(UIImage.templateImageNamed("cliqz-nav-forward"), for: .normal)
        toolbar.stopReloadButton.setImage(UIImage.templateImageNamed("cliqz-nav-refresh"), for: .normal)
        toolbar.menuButton.setImage(UIImage.templateImageNamed("cliqz-nav-menu"), for: .normal)
        toolbar.tabsButton.setImage(UIImage.templateImageNamed("cliqz-nav-tabs"), for: .normal)
        toolbar.tabsButton.accessibilityIdentifier = "TabToolbar.tabsButton"
    }

}
