//
//  ModelDat.swift
//  Landmarks
//
//  Created by Samuel Marroquín on 12/9/23.
//

import Foundation

@Observable
final class ModelData {
    var landmarks: [Landmark] = load(from: "landmarkData.json")
}

func load<T: Decodable>(from filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
