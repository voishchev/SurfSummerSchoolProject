//
//  TabBarConfiguration.swift
//  SurfSummerSchoolProject
//
//  Created by Sergei Voishchev on 03.08.2022.
//

import Foundation
import UIKit

class TabBarConfiguration {
    
    private let allTabs: [TabBarModel] = [.main, .favorite, .profile]
    
    // main method for TabBar configuration
    func configure() -> UITabBarController {
        return getTabBarController()
    }
}

//MARK: - private methods
private extension TabBarConfiguration {
    // TabBar global adjustments
    func getTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = .black
        tabBarController.tabBar.unselectedItemTintColor = .lightGray
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.viewControllers = getViewControllers()
        return tabBarController
    }
    
    // returns array with configured ViewControllers
    func getViewControllers() -> [UIViewController] {
        var viewControllers = [UIViewController]()
        allTabs.forEach { tab in
            let currentController = getCurrentController(tab: tab)
            let currentTabBarItem = UITabBarItem(title: tab.title, image: tab.image, selectedImage: tab.selectedImage)
            currentController.tabBarItem = currentTabBarItem
            viewControllers.append(currentController)
        }
        return viewControllers
    }
    
    // difines appropriate source of ViewController for specific tab
    func getCurrentController(tab: TabBarModel) -> UIViewController {
        switch tab {
        case .main:
            return MainViewController().navigator
        case .favorite:
            return FavoriteViewController()
        case .profile:
            return ProfileViewController()
        }
    }
}
