//
//  ViewController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/2/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    var scrollView: UIScrollView!
    var container: UIStackView!
    var pageControl: UIPageControl!

    var selfieView: OnboardingPage!
    var surveyView: OnboardingPage!
    var identityView: OnboardingPage!
    var pagesArray: [OnboardingPage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setViews()
        setPageControl()
       
        identityView.continueButton.addTarget(self, action: #selector(goToLogin), for: .touchUpInside)
    }
    
    @objc func goToLogin() {
        self.view.window!.rootViewController = LoginViewController()
    }
    
    func setupScrollView() {
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.delegate = self
        view.addSubview(scrollView)
        
        container = UIStackView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.axis = .horizontal
        container.spacing = 0
        container.distribution = .fillEqually
        
        scrollView.addSubview(container)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
    }
    
    func setViews(){
        selfieView = OnboardingPage(message: "Upload some selfies...", imageName: "selfie_image", isLastPage: false, color: .cyan)
        surveyView = OnboardingPage(message: "Take a quick survey...", imageName: "survey_image", isLastPage: false, color: .orange)
        identityView = OnboardingPage(message: "Assume your new identity!", imageName: "identity_image", isLastPage: true, color: .gray)
        
        pagesArray = [selfieView, surveyView, identityView]
        
        for page in pagesArray{
            container.addArrangedSubview(page)
            page.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        }
    }
    
    func setPageControl() {
        pageControl = UIPageControl()
        
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.purple
        pageControl.currentPageIndicatorTintColor = UIColor.systemPurple
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        pageControl.isUserInteractionEnabled = false
        
        view.addSubview(pageControl)
        view.bringSubviewToFront(pageControl)
        
        pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

extension OnboardingViewController: UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    }
}
