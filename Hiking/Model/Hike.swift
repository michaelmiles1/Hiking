//
//  Hike.swift
//  Hiking
//
//  Created by Michael Miles on 11/26/20.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Gatlinburg", imageURL: "gatlinburg", miles: 3.2),
            Hike(name: "LA Observatory", imageURL: "LA", miles: 4.5),
            Hike(name: "Blue Ridge Mountains", imageURL: "blueridge", miles: 7.2)
        ]
    }
}
