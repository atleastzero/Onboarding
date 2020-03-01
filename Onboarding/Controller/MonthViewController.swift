//
//  MonthViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/23/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class MonthViewController: UIViewController {
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Month"
        
        view.backgroundColor = .blue
        
        view.addSubview(stackView)
        setupStackView()
        
    }
    
    func setupStackView() {
        stackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor).isActive = true
    }
}

