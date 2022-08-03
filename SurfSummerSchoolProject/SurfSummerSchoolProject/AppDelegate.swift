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
        
        if #available(iOS 13.0, *) {
            window?.overrideUserInterfaceStyle = .light
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        startMainFlow()
        return true
    }
    func startMainFlow() {
        window?.rootViewController = TabBarConfiguration().configure()
    }

}


