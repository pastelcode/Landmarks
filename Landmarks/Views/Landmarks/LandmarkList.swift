//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Samuel Marroquín on 12/9/23.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    
//    The following line is used to select a row instead of several rows
//    @State private var selection: Int?
    @State private var selection = Set<Int>()
    @State private var showFavoritesOnly = false
    
    private var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                Toggle("Favorites only", isOn: $showFavoritesOnly)
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }

                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
            .toolbar {
                ToolbarItem {
                    EditButton()
                }
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
