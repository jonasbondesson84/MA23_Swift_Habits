//
//  HabitsApp.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-23.
//

import SwiftUI

@main
struct HabitsApp: App {
    @StateObject var userData = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(userData)
                
        }
    }
}
