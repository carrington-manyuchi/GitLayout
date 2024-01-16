//
//  GithubTextFields.swift
//  GitLayout
//
//  Created by DA MAC M1 157 on 2024/01/15.
//

import UIKit

class GithubTextFields: UITextField {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(placeholer: String) {
        super.init(frame: .zero)
        self.placeholder = placeholer
        configure()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemGray5.cgColor
        layer.cornerRadius = 25
        
        textColor = .label
        tintColor = .label
        textAlignment = .left
        font = UIFont.preferredFont(forTextStyle: .title3)
        adjustsFontSizeToFitWidth = true
        minimumFontSize  = 12
        
        leftViewMode = .always
        
        let label = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        leftView = label
                
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .next
        
        
    }
    
}
