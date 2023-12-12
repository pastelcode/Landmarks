//
//  Badge.swift
//  Landmarks
//
//  Created by Samuel Marroquín on 12/11/23.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0 ..< 8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360
            )
            .opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1 / 4, anchor: .top)
                    .position(
                        x: geometry.size.width / 2,
                        y: (3 / 4) * geometry.size.height
                    )
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
