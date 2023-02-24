//
//  BaseUITableView.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

final class BaseUITableView: UITableView {
    
    //MARK: - Initialization
    
    init(disableAutoResizingMask: Bool = true) {
        super.init(frame: CGRect.zero, style: .plain)
        self.setupTableView(disableAutoResizingMask)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTableView(_ disableAutoResizingMask: Bool) {
        self.backgroundColor = .tableViewBackgroundColor
        
        if(disableAutoResizingMask) {
            self.disableAutoResizingMask()
        }
    }
    
}
