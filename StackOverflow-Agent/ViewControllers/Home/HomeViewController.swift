//
//  HomeViewController.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

final class HomeViewController: BaseUIViewController {
    
    private lazy var searchTextField: BaseUITextField = {
        let baseTextField = BaseUITextField()
        return baseTextField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(searchTextField)
        NSLayoutConstraint.activate([
            searchTextField.topAnchor.constraint(equalTo: self.safeArea.topAnchor, constant: 15),
            searchTextField.leadingAnchor.constraint(equalTo: self.safeArea.leadingAnchor, constant: 15),
            searchTextField.trailingAnchor.constraint(equalTo: self.safeArea.trailingAnchor, constant: -15)
        ])
    }
    
}
