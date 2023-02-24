//
//  UITableView+Ext.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

extension UITableView {
    
    /// Register table view cell with type
    /// - Parameter tableViewCell: Table view cell type
    func register(_ tableViewCell: UITableViewCell.Type) {
        let baseName = tableViewCell.reuseIdentifier
        self.register(tableViewCell.self, forCellReuseIdentifier: baseName)
    }
    
    /// Dequeue Table view cell with type
    /// - Returns: Required Table view cell
    func dequeue<RequiredTableViewCell: UITableViewCell>() -> RequiredTableViewCell {
        let baseName = RequiredTableViewCell.reuseIdentifier
        guard let baseCell = self.dequeueReusableCell(withIdentifier: baseName) as? RequiredTableViewCell else {
            fatalError("cannot dequeue cell with identifier: \(baseName)")
        }
        return baseCell
    }
    
}
