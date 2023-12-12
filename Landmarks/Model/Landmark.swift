//
//  Landmark.swift
//  Landmarks
//
//  Created by Samuel Marroquín on 12/9/23.
//

import Foundation

struct Landmark: Hashable, Codable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    let imageName: String
    let coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        let latitude: String
        let longitude: String
    }
}
