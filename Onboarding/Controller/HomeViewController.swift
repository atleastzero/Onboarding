//
//  HomeViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/18/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let newBoxButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("New Box", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(goNewBox), for: .touchUpInside)
        return button
    }()
    
    let oldBoxButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Old Boxes", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(goOldBox), for: .touchUpInside)
        return button
    }()
    
    let profileButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Profile", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(goProfile), for: .touchUpInside)
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
        
        navigationItem.title = "Headquarters"
        
        view.backgroundColor = .blue
        
        view.addSubview(stackView)
        setupStackView()
        
    }
    
    func setupStackView() {
        stackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(newBoxButton)
        stackView.addArrangedSubview(oldBoxButton)
        stackView.addArrangedSubview(profileButton)
        
        stackView.distribution = .equalSpacing
    }
    
    @objc func goNewBox() {
    self.navigationController?.pushViewController(NewBoxViewController(), animated: true)
    }

    @objc func goOldBox() {
    self.navigationController?.pushViewController(OldBoxViewController(), animated: true)
    }
    
    @objc func goProfile() {
    self.navigationController?.pushViewController(ProfileViewController(), animated: true)
    }
}

