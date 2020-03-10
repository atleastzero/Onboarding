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

        let navHome = setupViewController("house", homeVC, "Identity HQ")
        let navNew = setupViewController("newbox", newVC, "Transform")
        let navOld = setupViewController("oldbox", oldVC, "Other Lives")
        let navProfile = setupViewController("person", profileVC, "One Soul")

        viewControllers = [navHome, navNew, navOld, navProfile]
    }
    
    func setupViewController(_ imageName: String, _ vc: UIViewController, _ title: String) -> UINavigationController {
        vc.title = title
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: imageName))
        let navController = UINavigationController(rootViewController: vc)
        return navController
    }
}
