//
//  BaseUIViewController.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

class BaseUIViewController: UIViewController {
    
    //MARK: - Properties
    
    lazy var safeArea: UILayoutGuide = {
        return self.view.safeAreaLayoutGuide
    }()
    
    enum ViewPriority {
        case main
        case secondary
    }
    
    //MARK: - Initialization
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(viewPriority: ViewPriority = .main) {
        super.init(nibName: nil, bundle: nil)
        self.setupViewController(viewPriority)
    }
    
    private func setupViewController(_ viewPriority: ViewPriority) {
        switch(viewPriority) {
            case .main:
                self.view.backgroundColor = .mainBackgroundColor
            case .secondary:
                self.view.backgroundColor = .secondaryBackgroundColor
            break
        }
    }
    
}
