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

extension BaseUITableView {
    
    /// Setup delegates of tableview
    /// - Parameter delegate: an instance of class confirming to TableViewDelegate protocol
    func setDelegate(_ delegate: UITableViewDelegate) {
        self.delegate = delegate
    }
    
    /// setup data source of tableview
    /// - Parameter dataSource: an instance of class confirming to TableViewDataSource protocol
    func setDataSource(_ dataSource: UITableViewDataSource) {
        self.dataSource = dataSource
    }
    
}
