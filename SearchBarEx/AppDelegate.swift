//
//  AppDelegate.swift
//  SearchBarEx
//
//  Created by 김종권 on 2021/06/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        AppAppearance.setupAppearance()

        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()

        window?.rootViewController = navigationController

        let fileName = "Main"
        let storyboard = UIStoryboard(name: fileName, bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ViewController")
        navigationController.pushViewController(vc, animated: false)

        window?.makeKeyAndVisible()

        return true
    }
    

}

