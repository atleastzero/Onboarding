//
//  LoginViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/18/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(goHome), for: .touchUpInside)
        return button
    }()
    
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
        
        view.backgroundColor = .blue
        
        view.addSubview(stackView)
        setupStackView()
    }
    
    func setupStackView() {
        stackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(loginButton)
    }
    
    @objc func goHome() {
        let navigationController = UINavigationController(rootViewController: HomeViewController())
        navigationController.isNavigationBarHidden = false
        self.view.window!.rootViewController = navigationController
    }
}
