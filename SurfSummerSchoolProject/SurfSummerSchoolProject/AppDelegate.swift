//
//  AppDelegate.swift
//  SurfSummerSchoolProject
//
//  Created by Sergei Voishchev on 02.08.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let startVC = UIViewController()
        startVC.view.backgroundColor = .red
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = startVC
        window?.makeKeyAndVisible()
        
        return true
    }

}

