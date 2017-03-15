//
//  AppDelegate.swift
//  Bugfender sample
//
//  Created by gimix on 07/05/15.
//  Copyright (c) 2015 Bugfender. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        // Override point for customization after application launch.
        let yourBugFenderAppKey = "4k4QFtHpvkQGDdCfF4fT6BAfv4PQpgGs" //TODO: insert your key here!
        
        Bugfender.activateLogger(yourBugFenderAppKey)
        Bugfender.enableUIEventLogging()
        
        let string = Bugfender.deviceIdentifier();
        UserDefaults.standard.set(string, forKey: "device_id")
        
        BFLog("#######################################")
        BFLog("###      BugfenderSDK TEST APP      ###")
        BFLog("###           by Bugfender          ###")
        BFLog("#######################################")
        BFLog("")
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        BFLog("App is going to background!")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        BFLog("App is coming from background to active!")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

