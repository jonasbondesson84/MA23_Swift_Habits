//
//  User.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-23.
//

import Foundation

class User {
    var name: String
//    var sex: Int //0 = Female, 1 = Male, 2 = Other
    var imageUrl : String?
    var streak : Int
    var badges = [Badge]()
    var activities = [Activity]()
    var todaysActivities = [Activity]()
    var officeWorkOut = [OfficeWorkout]()
    
    init(name: String, imageUrl: String?, streak: Int, badges: [Badge] = [Badge]()) {
        self.name = name
        self.imageUrl = imageUrl
        self.streak = streak
        self.badges = badges
    }
    
}
