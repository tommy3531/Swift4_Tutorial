//
//  AppDelegate.swift
//  UIViewTutorial
//
//  Created by Tom Marler on 2/7/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:[UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        // The device has no frame but it has bounds
        // Main window has no superview but its frame is set with respect
        // to the screens bounds.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let rootViewController = ViewController()
        self.window!.rootViewController = rootViewController
        self.window!.backgroundColor = .white
        self.window!.makeKeyAndVisible()
        return true
    }
}

