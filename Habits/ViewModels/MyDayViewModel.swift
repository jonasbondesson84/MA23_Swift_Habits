//
//  MyDayViewModel.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-23.
//

import Foundation

class MyDayViewModel: ObservableObject {
    
    @Published var activities = [Activity]()
    @Published var user = User()
    init() {
        creatDummyData()
        print(activities.count)
    }
    
    func creatDummyData() {
        user.name = "Jonas"
        var running = Activity(name: "Running", date: Date(), start: Date(), end: nil, officeWorkout: false, repeating: false)
        activities.append(running)
        var swimming = Activity(name: "Swimming", date: Date(), start: Date(), end: nil, officeWorkout: false, repeating: false)
        activities.append(swimming)
    }
    
    
}
