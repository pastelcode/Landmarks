//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Samuel Marroquín on 12/9/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
