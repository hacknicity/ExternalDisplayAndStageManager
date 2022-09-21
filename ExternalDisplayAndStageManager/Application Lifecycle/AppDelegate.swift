//
//  AppDelegate.swift
//  ExternalDisplayAndStageManager
//
//  Created by Geoff Hackworth on 21/09/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfiguration: UISceneConfiguration

        if connectingSceneSession.role == .windowExternalDisplay {
            sceneConfiguration = UISceneConfiguration.init(name: "External Display Configuration", sessionRole: connectingSceneSession.role)

            // Removing the storyboard prevents the external display scene from being used
            if Settings.shared.externalDisplay == false {
                sceneConfiguration.storyboard = nil
            }
        } else {
            sceneConfiguration = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        }

        return sceneConfiguration
    }
}

