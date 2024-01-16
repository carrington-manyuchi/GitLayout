//
//  GitButton.swift
//  GitLayout
//
//  Created by DA MAC M1 157 on 2024/01/15.
//

import UIKit

class GitButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(title: String, backgroundColor: UIColor, titleColor: UIColor) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitleColor(titleColor, for: .normal)
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 25
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
