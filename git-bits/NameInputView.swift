//
//  NameInputView.swift
//  git-bits
//
//  Created by Henry Chan on 4/28/19.
//  Copyright © 2019 Tigerspike. All rights reserved.
//

import UIKit

class NameInputView: UIView {
    
    lazy var textField: UITextField = {
        let view = UITextField()
        view.placeholder = "Your name!"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        
        addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.topAnchor.constraint(equalTo: topAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
