//
//  SceneDelegate.swift
//  ToDoList
//
//  Created by Sergio Mascarpone on 16.08.24.
//

import UIKit

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let taskListViewController = TaskListViewController()
        let navigationController = UINavigationController(rootViewController: taskListViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
