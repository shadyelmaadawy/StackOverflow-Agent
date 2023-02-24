//
//  NSObject+Ext.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

extension NSObject {
    
    /// Generic variable to get base name of instance
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
