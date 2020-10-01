//
//  Utils.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func fillInParent() {
        
        guard let superview = self.superview else {
            return
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        let views = ["myView": self]
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[myView]|",
                                                                   options: NSLayoutConstraint.FormatOptions.alignAllCenterY,
                                                                   metrics: nil,
                                                                   views: views)
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[myView]|",
                                                                 options: NSLayoutConstraint.FormatOptions.alignAllCenterX,
                                                                 metrics: nil,
                                                                 views: views)
        
        superview.addConstraints(horizontalConstraints)
        superview.addConstraints(verticalConstraints)
        
    }
    
}
