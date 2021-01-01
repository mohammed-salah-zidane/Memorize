//
//  AppDelegate.swift
//  Memorize
//
//  Created by prog_zidane on 1/1/21.
//

import UIKit


class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("hello from appDelegate")
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let config = UISceneConfiguration(name: "SceneDelegate", sessionRole: connectingSceneSession.role)
        return config
    }
}
