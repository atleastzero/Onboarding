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
    let selfieView: UIView = UIView()
    let surveyView: UIView = UIView()
    let identityView: UIView = UIView()
    
    let selfieLabel: UILabel = UILabel()
    let surveyLabel: UILabel = UILabel()
    let identityLabel: UILabel = UILabel()
    
    let selfieImage = UIImageView()
    let surveyImage = UIImageView()
    let identityImage = UIImageView()
    
    override func loadView() {
        super.loadView()
        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.delegate = self as? UIScrollViewDelegate
        view.addSubview(scrollView)
               
        container = UIStackView()
        container.axis = .horizontal
        container.spacing = 0
        container.translatesAutoresizingMaskIntoConstraints = false
        container.distribution = .fillEqually
               
        scrollView.addSubview(container)
        container.addArrangedSubview(selfieView)
        container.addArrangedSubview(surveyView)
        container.addArrangedSubview(identityView)
//        view.addSubview(pageControl)
        
        selfieView.backgroundColor = .cyan
        surveyView.backgroundColor = .brown
        identityView.backgroundColor = .gray
               
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
        surveyView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        identityView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        
        selfieLabel.text = "Upload some selfies..."
        surveyLabel.text = "Take a quick survey..."
        identityLabel.text = "Assume your new identity!"
        
        selfieLabel.textColor = .purple
        surveyLabel.textColor = .purple
        identityLabel.textColor = .purple
        
        selfieLabel.font = selfieLabel.font.withSize(20)
        surveyLabel.font = surveyLabel.font.withSize(20)
        identityLabel.font = identityLabel.font.withSize(20)
        
        selfieLabel.translatesAutoresizingMaskIntoConstraints = false
        surveyLabel.translatesAutoresizingMaskIntoConstraints = false
        identityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        selfieView.addSubview(selfieLabel)
        surveyView.addSubview(surveyLabel)
        identityView.addSubview(identityLabel)
        
        view.addConstraint(NSLayoutConstraint(item: selfieLabel, attribute: .centerX, relatedBy: .equal, toItem: selfieView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: selfieLabel, attribute: .centerY, relatedBy: .equal, toItem: selfieView, attribute: .centerY, multiplier: 1.0, constant: 150.0))
        view.addConstraint(NSLayoutConstraint(item: surveyLabel, attribute: .centerX, relatedBy: .equal, toItem: selfieView, attribute: .centerX, multiplier: 3.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: surveyLabel, attribute: .centerY, relatedBy: .equal, toItem: selfieView, attribute: .centerY, multiplier: 1.0, constant: 150.0))
        view.addConstraint(NSLayoutConstraint(item: identityLabel, attribute: .centerX, relatedBy: .equal, toItem: selfieView, attribute: .centerX, multiplier: 5.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: identityLabel, attribute: .centerY, relatedBy: .equal, toItem: selfieView, attribute: .centerY, multiplier: 1.0, constant: 150.0))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        selfieImage.image = UIImage(named: "selfie_image")
        surveyImage.image = UIImage(named: "survey_image")
        identityImage.image = UIImage(named: "identity_image")
        
        selfieImage.translatesAutoresizingMaskIntoConstraints = false
        surveyImage.translatesAutoresizingMaskIntoConstraints = false
        identityImage.translatesAutoresizingMaskIntoConstraints = false
        
        selfieView.addSubview(selfieImage)
        surveyView.addSubview(surveyImage)
        identityView.addSubview(identityImage)
        
        selfieView.bringSubviewToFront(selfieImage)
        surveyView.bringSubviewToFront(surveyImage)
        identityView.bringSubviewToFront(identityImage)
        
        view.addConstraint(NSLayoutConstraint(item: selfieImage, attribute: .centerX, relatedBy: .equal, toItem: selfieView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: selfieImage, attribute: .centerY, relatedBy: .equal, toItem: selfieView, attribute: .centerY, multiplier: 1.0, constant: -150.0))
        view.addConstraint(NSLayoutConstraint(item: surveyImage, attribute: .centerX, relatedBy: .equal, toItem: surveyView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: surveyImage, attribute: .centerY, relatedBy: .equal, toItem: surveyView, attribute: .centerY, multiplier: 1.0, constant: -150.0))
        view.addConstraint(NSLayoutConstraint(item: identityImage, attribute: .centerX, relatedBy: .equal, toItem: identityView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: identityImage, attribute: .centerY, relatedBy: .equal, toItem: identityView, attribute: .centerY, multiplier: 1.0, constant: -150.0))
        
        view.addConstraint(NSLayoutConstraint(item: selfieImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 220))
        view.addConstraint(NSLayoutConstraint(item: selfieImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 190))
        view.addConstraint(NSLayoutConstraint(item: surveyImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 220))
        view.addConstraint(NSLayoutConstraint(item: surveyImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 190))
        view.addConstraint(NSLayoutConstraint(item: identityImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 220))
        view.addConstraint(NSLayoutConstraint(item: identityImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 190))
        
        let pageControl = UIPageControl()
        pageControl.frame = CGRect(x: container.center.x, y: view.center.y+200, width: 300, height: 300)
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        view.addSubview(pageControl)
        
        pageControl.pageIndicatorTintColor = UIColor.purple
        pageControl.currentPageIndicatorTintColor = UIColor.systemPurple
        
    }


}

