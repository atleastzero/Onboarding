//
//  ViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/2/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scrollView: UIScrollView!
    var container: UIStackView!
    var pageControl: UIPageControl!

    let selfieView: UIView = UIView()
    let surveyView: UIView = UIView()
    let identityView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }
    
    func setupScrollView() {
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.delegate = self as? UIScrollViewDelegate
        view.addSubview(scrollView)
        
        container = UIStackView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.axis = .horizontal
        container.spacing = 0
        container.distribution = .fillEqually
        
        scrollView.addSubview(container)
        container.addArrangedSubview(selfieView)
        container.addArrangedSubview(surveyView)
        container.addArrangedSubview(identityView)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
        
        selfieView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
//        surveyView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
//        identityView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        
        selfieView.backgroundColor = .cyan
        surveyView.backgroundColor = .brown
        identityView.backgroundColor = .gray
        
        pageControl = UIPageControl()
        
        view.addSubview(pageControl)
        
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.purple
        pageControl.currentPageIndicatorTintColor = UIColor.systemPurple
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    func createView(currentView: UIView, imageName: String, text: String, isLastPage: Bool, color: UIColor) {
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        
        currentView.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo: currentView.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: currentView.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerXAnchor.constraint(equalTo: currentView.layoutMarginsGuide.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: currentView.layoutMarginsGuide.centerYAnchor).isActive = true
        
        let imageView = UIImageView(image: UIImage(named: imageName))
        imageView.contentMode = .scaleAspectFit
        stackView.addArrangedSubview(imageView)
        
        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.6).isActive = true
        
        let message = UILabel()
        message.numberOfLines = 0
        message.textAlignment = .center
        message.text = text
        message.textColor = .purple
        message.font = UIFont(name: "American Typewriter", size: 20)

        currentView.backgroundColor = color
    }
    
//
    
//    override func loadView() {
//        super.loadView()
//
//        view.addSubview(pageControl)
//
//        selfieLabel.text = "Upload some selfies..."
//        surveyLabel.text = "Take a quick survey..."
//        identityLabel.text = "Assume your new identity!"
//
//
//        selfieLabel.font = selfieLabel.font.withSize(20)
//        surveyLabel.font = surveyLabel.font.withSize(20)
//        identityLabel.font = identityLabel.font.withSize(20)
//
//        selfieLabel.translatesAutoresizingMaskIntoConstraints = false
//        surveyLabel.translatesAutoresizingMaskIntoConstraints = false
//        identityLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        selfieView.addSubview(selfieLabel)
//        surveyView.addSubview(surveyLabel)
//        identityView.addSubview(identityLabel)
//
        
//    }
    
        // Do any additional setup after loading the view.
        
//        selfieImage.image = UIImage(named: "selfie_image")
//        surveyImage.image = UIImage(named: "survey_image")
//        identityImage.image = UIImage(named: "identity_image")
//
//        selfieView.addSubview(selfieImage)
//        surveyView.addSubview(surveyImage)
//        identityView.addSubview(identityImage)
//
//        selfieView.bringSubviewToFront(selfieImage)
//        surveyView.bringSubviewToFront(surveyImage)
//        identityView.bringSubviewToFront(identityImage)
//



}

