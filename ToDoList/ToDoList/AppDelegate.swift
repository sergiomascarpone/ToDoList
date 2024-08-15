//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Sergio Mascarpone on 16.08.24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let taskListViewController = TaskListViewController()
        let navigationController = UINavigationController(rootViewController: taskListViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}
