//
//  ContentView.swift
//  Landmarks
//
//  Created by Samuel Marroquín on 12/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
