//
//  MyDayViewModel.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-23.
//

import Foundation
import SwiftUI

class MyDayViewModel: ObservableObject {
    
    let backgroundColor = Color(red: 18/256, green: 29/256, blue: 47/256)
    let cardBackgroundColor = Color(red: 1/256, green: 165/256, blue: 126/256)
    let cardShadowColor = Color(red: 182/256, green: 248/256, blue: 219/256)
    
    @Published var activities = [Activity]()
    @Published var user = User(name: "Jonas", imageUrl: nil, streak: 0)
    @Published var categories = [Category]()
    init() {
        creatDummyData()
        print(user.todaysActivities)
    }
    
    func createCategories() {
        let running = Category(name: "Runnning", image: "figure.run")
        categories.append(running)
        let swimming = Category(name: "Swimming", image: "figure.pool.swim")
        categories.append(swimming)
        let cycling = Category(name: "Cycling", image: "figure.outdoor.cycle")
        categories.append(cycling)
    }
    
    func creatDummyData() {
        let strech = OfficeWorkout(name: "Strech", repeatTimeHours: 1.30)
        let pushup = OfficeWorkout(name: "Push ups", repeatTimeHours: 2.0)
        
        user.officeWorkOut.append(strech)
        user.officeWorkOut.append(pushup)
    
        let running = Activity(name: "Running", date: Date(), start: Date(), end: nil, officeWorkout: false, repeating: false, category: Category(name: "Runnning", image: "figure.run"))
        activities.append(running)
        let swimming = Activity(name: "Swimming", date: Date(), start: Date(), end: nil, officeWorkout: false, repeating: false, category: Category(name: "Swimming", image: "figure.pool.swim"))
        activities.append(swimming)
        user.todaysActivities.append(running)
        user.todaysActivities.append(swimming)
        
        
        var badge = Badge(name: "5 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        badge = Badge(name: "10 days", category: "Running", image: "badge_blue")
        user.badges.append(badge)
        
    }
    
    
}
