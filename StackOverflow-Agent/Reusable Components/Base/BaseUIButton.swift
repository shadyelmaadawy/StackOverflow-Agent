//
//  BaseUIButton.swift
//  StackOverflow-Agent
//
//  Created by Shady K. Maadawy on 24/02/2023.
//

import UIKit

class BaseUIButton: UIButton {
    
    init(disableAutoResizingMask: Bool = true) {
        super.init(frame: CGRect.zero)
        setupButton(disableAutoResizingMask)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(_ disableAutoResizingMask: Bool) {
        
        if(disableAutoResizingMask) {
            self.disableAutoResizingMask()
        }
        
        let buttonPadding = 15.0
        if #available(iOS 15.0, *) {
            var buttonConfiguration = UIButton.Configuration.filled()
            
            buttonConfiguration.baseBackgroundColor = .tintColor
            buttonConfiguration.baseForegroundColor = .white
            
            buttonConfiguration.contentInsets = NSDirectionalEdgeInsets.init(
                top: buttonPadding, leading: buttonPadding,
                bottom: buttonPadding, trailing: buttonPadding
            )
            
            self.configuration = buttonConfiguration
        } else {
            
            self.backgroundColor = .tintColor
            self.tintColor = .white
            
            self.contentEdgeInsets = UIEdgeInsets.init(
                top: buttonPadding, left: buttonPadding,
                bottom: buttonPadding, right: buttonPadding
            )
        }
    }
    
    func setTitle(_ title: String) {
        super.setTitle(title, for: .normal)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setRadius()
    }
    
}
