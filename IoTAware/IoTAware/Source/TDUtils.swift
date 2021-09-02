//
//  TDUtils.swift
//  IoTAware
//
//  Created by Bradley Clemson on 22/07/2020.
//  Copyright © 2020 Bradley Clemson. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    func addSubviewForAutoLayout(_ subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subview)
    }
    
    func setSubviewsForAutoLayout(_ subviews: [UIView]) {
        subviews.forEach(self.addSubviewForAutoLayout)
    }
    
    public func pin(to view: UIView) {
        pin(to: view, withPadding: 0)
    }
    
    public func pin(to view: UIView, withPadding padding: CGFloat = 0.0) {
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding)
            ])
    }
}
