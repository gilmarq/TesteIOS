//
//  AppDelegate.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 06/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
    var appCoordinator: AppCoordinator!
    let navController = UINavigationController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        navController.navigationBar.backItem?.title = " "
        navController.isNavigationBarHidden = true
        window?.rootViewController = navController

        self.appCoordinator = AppCoordinator(navigationController: navController)

        self.appCoordinator.start()

        window?.makeKeyAndVisible()
        
        return true
    }
}

