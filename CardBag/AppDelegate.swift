//
//  AppDelegate.swift
//  CardBag
//
//  Created by Admin on 18.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(
        _ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
        ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = NoCardViewController()
        let navigation = UINavigationController(rootViewController: viewController)
        window?.rootViewController = navigation
        
       
        window?.makeKeyAndVisible()
        return true
    }

    


}

