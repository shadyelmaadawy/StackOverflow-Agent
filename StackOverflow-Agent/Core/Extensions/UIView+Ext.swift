//
//  UIView+Ext.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

extension UIView {
    
    func disableAutoResizingMask() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setRadius(_ radius: CGFloat = 6.00) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
}
