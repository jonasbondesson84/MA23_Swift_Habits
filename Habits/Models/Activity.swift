//
//  Activity.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-23.
//

import Foundation

struct Activity: Identifiable {
    var id = UUID()
    var name : String
    var date : Date
    var start : Date?
    var end : Date?
    var distance : Double?
    var repetitions : Double?
    var officeWorkout : Bool
    var repeating : Bool
    var category : Category
}
