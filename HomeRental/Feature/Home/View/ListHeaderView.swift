//
//  ListHeaderView.swift
//  PickUpApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct ListHeaderView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .raleway(.medium, 20)
            Spacer()
            Button("See more") {
                
            }
            .raleway(.regular, 16)
            .foregroundColor(.text)
        }
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(title: "Near from you")
    }
}
