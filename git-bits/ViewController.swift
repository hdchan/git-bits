//
//  ViewController.swift
//  git-bits
//
//  Created by Henry Chan on 4/28/19.
//  Copyright © 2019 Tigerspike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var helloWorldLabel: UILabel = {
        let view = UILabel()
        view.text = "Hello World!"
        view.textColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var dateLabel: DateLabelView = {
        let view = DateLabelView()
        view.label.textColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(helloWorldLabel)
        view.addSubview(dateLabel)
        
        NSLayoutConstraint.activate([
            helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloWorldLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            dateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dateLabel.topAnchor.constraint(equalTo: helloWorldLabel.bottomAnchor, constant: 10)
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

