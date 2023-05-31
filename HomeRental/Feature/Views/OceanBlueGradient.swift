//
//  OceanBlueGradient.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct OceanBlueGradient: View {
    
    var cornerRadius: CGFloat = 12
    var hasShadow: Bool = false
    
    var body: some View {
        if hasShadow {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(
                    LinearGradient(colors: [.lightBlue, .darkBlue],
                                   startPoint: .leading, endPoint: .trailing)
                )
                .shadow(color: .tealishBlue.opacity(0.08),
                        radius: 8,
                        x: 0,
                        y: 8)
        } else {
            LinearGradient(colors: [.lightBlue, .darkBlue],
                           startPoint: .leading, endPoint: .trailing)
            .cornerRadius(cornerRadius)
        }
    }
}

struct OceanBlueGradient_Previews: PreviewProvider {
    static var previews: some View {
        OceanBlueGradient()
    }
}
