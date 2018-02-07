//
//  AppDelegate.swift
//  SwiftCollectionVC
//
//  Created by Tom Marler on 1/24/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Create a new window for the window property that
        // comes standard on the AppDelegate class.  The UIWindow
        // is where all view controllers and views appear
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Create a new instance of ViewController
        let mainViewController = ViewController()
        
        // Set the initial ViewController to our instance of ViewController
        window?.rootViewController = mainViewController
        
        // Present the window
        window?.makeKeyAndVisible()
        
        return true
    }
}

