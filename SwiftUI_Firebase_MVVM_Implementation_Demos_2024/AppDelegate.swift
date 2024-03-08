//
//  AppDelegate.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/8/24.
//

import Foundation
import FirebaseCore
import SwiftUI


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
