//
//  AppDelegate.swift
//  shortcut
//
//  Created by Giorgy null on 16/11/21.
//

import UIKit
import Intents

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    lazy var orderFood: OrderFoodIntentHandler? = OrderFoodIntentHandler()
    lazy var showCart: ShowCartIntentHandler? = ShowCartIntentHandler()
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }

    func application(_ application: UIApplication, handlerFor intent: INIntent) -> Any? {
        switch intent {
        case intent as OrderFoodIntent:
            return orderFood
        case intent as ShowCartIntent:
            return showCart
//        case intent as SelectRestaurantIntent:
//        case intent as SelectCategoryIntent:
//        case intent as SelectDishIntent:
//        case intent as SelectQuantityIntent:
        default:
            return nil
        }
    }
}
