//
//  SceneDelegate.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 28/02/2024.
//

import UIKit
import SideMenu

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            guard let windowScene = (scene as? UIWindowScene) else { return }

            let window = UIWindow(windowScene: windowScene)
            let viewController = PickUpLineVc()
            let navigationController = UINavigationController(rootViewController: viewController)

            window.rootViewController = navigationController
            self.window = window
            window.makeKeyAndVisible()
        }
}

