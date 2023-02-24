//
//  BaseUITextField.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

final class BaseUITextField: UITextField {
    
    //MARK: - Properties

    var padding: UIEdgeInsets {
        return UIEdgeInsets.init(top: 15, left: 15, bottom: 15, right: 15)
    }
    
    //MARK: - Overrides
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func borderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    //MARK: - Initialization

    init(disableAutoResizingMask: Bool = true) {
        super.init(frame: CGRect.zero)
        self.setupTextField(disableAutoResizingMask)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTextField(_ disableAutoResizingMask: Bool) {
        self.backgroundColor = .textFieldBackgroundColor
        
        if(disableAutoResizingMask) {
            self.disableAutoResizingMask()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setRadius()
    }
    
}
