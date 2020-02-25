//
//  LoginViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/18/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var titleConstraintStart: NSLayoutConstraint!
    var titleConstraintEnd: NSLayoutConstraint!
    
    let appNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Identity Box"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = UIFont(name: "American Typewriter", size: 50)
        return label
    }()
    
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "box")
        return imageView
    }()
    
    let usernameTextField: SimpleTextField = {
        let textField = SimpleTextField(placeholder: "username")
        return textField
    }()
    
    let passwordTextField: SimpleTextField = {
        let textField = SimpleTextField(placeholder: "password")
        textField.isSecureTextEntry = true
        return textField
    }()
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        titleConstraintStart.isActive = false
        titleConstraintEnd.isActive = true
        
        UIView.animate(withDuration: 1.0) {
            self.view.layoutIfNeeded()
            self.appNameLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
    }
    
    func setupStackView() {
//        stackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
//        stackView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
//        stackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor).isActive = true
        
        self.view.addSubview(mainImage)
        mainImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
    
        self.view.addSubview(appNameLabel)
        titleConstraintStart = appNameLabel.centerYAnchor.constraint(equalTo: mainImage.centerYAnchor, constant: -60)
        titleConstraintStart.isActive = true
        titleConstraintEnd =  appNameLabel.centerYAnchor.constraint(equalTo: mainImage.topAnchor, constant: -60)
        appNameLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        appNameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    
        self.view.addSubview(loginButton)
        loginButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60).isActive = true
        appNameLabel.transform = CGAffineTransform(scaleX: 0, y: 0)
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.addTarget(self, action: #selector(goHome), for: .touchUpInside)
    
        self.view.addSubview(usernameTextField)
        usernameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        usernameTextField.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 30).isActive = true
        usernameTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75).isActive = true
        
        self.view.addSubview(passwordTextField)
        passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 15).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75).isActive = true
    }
    
    @objc func goHome() {
        let navigationController = UINavigationController(rootViewController: HomeViewController())
        navigationController.isNavigationBarHidden = false
        self.view.window!.rootViewController = navigationController
    }
}
