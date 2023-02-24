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
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Initialization
    
    convenience init(viewPriority: ViewPriority = .main) {
        self.init(nibName: nil, bundle: nil)
        self.setupViewController(viewPriority)
    }
    
    private func setupViewController(_ viewPriority: ViewPriority) {
        switch(viewPriority) {
            case .main:
            break
            case .secondary:
            break
        }
    }
    
}
