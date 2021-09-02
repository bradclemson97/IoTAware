//
//  TDSelectionBuildConfig.swift
//  IoTAware
//
//  Created by Bradley Clemson on 22/07/2020.
//  Copyright © 2020 Bradley Clemson. All rights reserved.
//

import Foundation
import UIKit

public protocol TDSelectionBuildConfig {
    var font: UIFont? { get }
    var textColor: UIColor? { get }
    
    var backgroundColorNormal: UIColor? { get }
    var backgroundColorHighlighted: UIColor? { get }
    var backgroundColorSelected: UIColor? { get }
    var backgroundColorHighlightedSelected: UIColor? { get }
    var borderColor: UIColor? { get }
    var borderWidth: CGFloat? { get }
    var buttonRadius: CGFloat? { get }
    
    var lineColor: UIColor? { get }
}
