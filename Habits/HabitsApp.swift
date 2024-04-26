//
//  HabitsApp.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct HabitsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var userData = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(userData)
                
        }
    }
}
