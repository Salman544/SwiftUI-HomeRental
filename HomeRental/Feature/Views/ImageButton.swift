//
//  FilterButton.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct ImageButton: View {
    
    var image: String
    var onClick: (() -> Void)? = nil
    
    var body: some View {
        Button {
            onClick?()
        } label: {
            Image(image)
                .tint(.white)
        }
        .frame(width: 48, height: 48)
        .background(
            OceanBlueGradient()
        )

    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton(image: "filter")
    }
}
