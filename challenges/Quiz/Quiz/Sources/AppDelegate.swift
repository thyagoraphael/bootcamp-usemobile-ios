//
//  AppDelegate.swift
//  Quiz
//
//  Created by thyagoraphael on 9/18/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        
        let navigationController = UINavigationController(rootViewController: viewController)
        
        /* Set Colors navigationController */
        UINavigationBar.appearance().barTintColor = UIColor(red: 117.0/255.0, green: 140.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().isTranslucent = false
        navigationController.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController.navigationBar.tintColor = UIColor.white
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}

