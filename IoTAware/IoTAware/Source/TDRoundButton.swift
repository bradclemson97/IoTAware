//
//  TDRoundButton.swift
//  IoTAware
//
//  Created by Bradley Clemson on 22/07/2020.
//  Copyright © 2020 Bradley Clemson. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable open class TDRoundButton: UIButton {
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 0.5 * bounds.size.width
        clipsToBounds = true
    }
    
    var backgroundColorNormal: UIColor? {
        didSet {
            backgroundColor = backgroundColorNormal
        }
    }
    
    var backgroundColorHighlighted: UIColor?
    private var _backgroundColorHighlighted: UIColor? {
        return backgroundColorHighlighted ?? backgroundColorNormal
    }
    
    var backgroundColorSelected: UIColor?
    private var _backgroundColorSelected: UIColor? {
        return backgroundColorSelected ?? _backgroundColorHighlighted
    }
    
    var backgroundColorHighlightedSelected: UIColor?
    private var _backgroundColorHighlightedSelected: UIColor? {
        return backgroundColorHighlightedSelected ?? _backgroundColorHighlighted
    }
    
    override open var isHighlighted: Bool {
        didSet {
            paintBackground()
        }
    }
    
    override open var isSelected: Bool {
        didSet {
            paintBackground()
        }
    }
    
    private func paintBackground() {
        switch (isHighlighted, isSelected) {
        case (true, false):
            backgroundColor = _backgroundColorHighlighted
        case (true, true):
            backgroundColor = _backgroundColorHighlightedSelected
        case (false, true):
            backgroundColor = _backgroundColorSelected
        default:
            backgroundColor = backgroundColorNormal
        }
    }
}
