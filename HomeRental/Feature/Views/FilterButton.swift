//
//  FilterButton.swift
//  PickUpApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct FilterButton: View {
    var body: some View {
        Button {
            
        } label: {
            Image("filter")
        }
        .frame(width: 48, height: 48)
        .background(
            OceanBlueGradient()
        )

    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton()
    }
}
