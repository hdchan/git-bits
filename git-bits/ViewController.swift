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
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var dateLabel: UILabel = {
        let view = UILabel()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = formatter.string(from: Date())
        view.text = date
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var nameInputField: NameInputView = {
        let view = NameInputView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var updateButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Update", for: .normal)
        view.addTarget(self, action: #selector(onUpdateTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(helloWorldLabel)
        view.addSubview(dateLabel)
        view.addSubview(nameInputField)
        view.addSubview(updateButton)
        
        NSLayoutConstraint.activate([
            helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloWorldLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            dateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dateLabel.topAnchor.constraint(equalTo: helloWorldLabel.bottomAnchor, constant: 10),
            
            nameInputField.widthAnchor.constraint(equalToConstant: 200),
            nameInputField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameInputField.topAnchor.constraint(equalTo: dateLabel.topAnchor, constant: 100),
            
            updateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            updateButton.topAnchor.constraint(equalTo: nameInputField.bottomAnchor, constant: 20)
            ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc private func onUpdateTapped() {
        
    }

}

