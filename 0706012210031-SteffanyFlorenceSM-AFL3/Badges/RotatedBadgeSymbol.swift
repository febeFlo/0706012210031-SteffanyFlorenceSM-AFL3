//
//  RotatedBadgeSymbol.swift
//  0706012210031-SteffanyFlorenceSM-AFL3
//
//  Created by MacBook Pro on 19/04/24.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
