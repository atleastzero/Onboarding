//
//  TabBarController.swift
//  Onboarding
//
//  Created by Megan OBryan on 2/27/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//


import UIKit
import SwiftUI

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    func setupViewControllers(){
        let homeVC = NewHomeViewController()
        let newVC = NewBoxViewController()
        let oldVC = OldBoxViewController()
        let profileVC = UIHostingController(rootView: ContentView())
        
        let navHome = setupViewController(homeVC, "Identity HQ")
        let navNew = setupViewController(newVC, "Transform")
        let navOld = setupViewController(oldVC, "Other Lives")
        let navProfile = setupViewController(profileVC, "One Soul")
//        let navControllerNA = setupViewController("northAmerica", "North America", UIColor.red)
//        let navControllerSA = setupViewController("southAmerica", "South America", UIColor.orange)
//        let navControllerAU = setupViewController("australia", "Australia", UIColor.yellow)
//        let navControllerAF = setupViewController("africa", "Africa", UIColor.green)
//        let navControllerEU = setupViewController("europe", "Europe", UIColor.blue)
//        let navControllerAS = setupViewController("asia", "Asia", UIColor.purple)
//
        viewControllers = [navHome, navNew, navOld, navProfile]
    }
    
    func setupViewController(_ vc: UIViewController, _ title: String) -> UINavigationController {
        vc.title = title
        let navController = UINavigationController(rootViewController: vc)
        return navController
    }
}
