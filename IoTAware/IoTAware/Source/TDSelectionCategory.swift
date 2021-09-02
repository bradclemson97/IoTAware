//
//  TDSelectionCategory.swift
//  IoTAware
//
//  Created by Bradley Clemson on 22/07/2020.
//  Copyright © 2020 Bradley Clemson. All rights reserved.
//

import Foundation

public enum TDSelectionCategory: Int, CaseIterable {
    case stronglyAgree = 0
    case agree = 1
    case neutral = 2
    case disagree = 3
    case stronglyDisagree = 4
    
    public var localizedName: String {
        get {
            switch self {
            case .stronglyAgree:
                return NSLocalizedString("strongly agree", comment: "Localised text for selection")
            case .agree:
                return NSLocalizedString("agree", comment: "Localised text for selection")
            case .neutral:
                return NSLocalizedString("neutral", comment: "Localised text for selection")
            case .disagree:
                return NSLocalizedString("disagree", comment: "Localised text for selection")
            case .stronglyDisagree:
                return NSLocalizedString("strongly disagree", comment: "Localised text for selection")
            }
        }
    }
}
