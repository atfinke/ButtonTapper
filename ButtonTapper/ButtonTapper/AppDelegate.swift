//
//  AppDelegate.swift
//  ButtonTapper
//
//  Created by Andrew Finke on 10/1/17.
//  Copyright © 2017 Andrew Finke. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UIApplication.shared.keyWindow?.layer.speed = 200
        return true
    }
}

