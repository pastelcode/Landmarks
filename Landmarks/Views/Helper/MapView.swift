//
//  MapView.swift
//  Landmarks
//
//  Created by Samuel Marroquín on 12/9/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    let coordinates: Landmark.Coordinates
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinates: .init(latitude: 34.011_286, longitude: -116.166_866))
}
