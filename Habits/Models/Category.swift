//
//  Category.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-24.
//

import Foundation


struct Category: Identifiable, Decodable, Encodable, Hashable {
    var id = UUID()
    let name : String
    let image : String
}
