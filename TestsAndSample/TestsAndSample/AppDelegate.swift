//
//  AppDelegate.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 29/06/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
  var window: UIWindow?


  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    // Override point for customization after application launch.
    self.window!.backgroundColor = UIColor.whiteColor()
    self.window!.makeKeyAndVisible()
    
    var point:CGPoint = CGPoint(x: 2.0, y: 2.0)
    var vector:CGVector = CGVector(horizontal: 2.0, vertical: 2.0)
    
    point = point + vector
    point += vector
    
    point = point - vector
    point -= vector
    
    point = point * vector
    point *= vector
    
    point = point / vector
    point /= vector
    
    vector = vector * 4.5
    vector *= 20.5
    
    vector = vector / 2.0
    vector /= 2.0
    point == vector
    point != vector
    point < vector
    point <= vector
    point > vector
    point >= vector
    
    vector.angleInRadians
    vector.magnitude
    vector.length
    vector.lengthSquared
    vector.dotProduct(point)
    vector.crossProduct(point)
    vector.distanceTo(point)
    vector.reversed
    vector.normalized
    vector.limited(20)
    vector.scaled(20)
    vector.angled(90)


    
    return true
  }

  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

