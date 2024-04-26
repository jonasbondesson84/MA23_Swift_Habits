//
//  OfficeWorkout.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-24.
//

import Foundation

struct OfficeWorkout: Identifiable, Decodable, Encodable {
    var id = UUID()
    var name: String
    var repeatTimeHours: Double
}
