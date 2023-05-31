//
//  HomeDetailRentView.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct HomeDetailRentView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Price")
                    .raleway(.regular, 16)
                    .foregroundColor(.text)
                Text("Rp. 2.500.000.000 / Year")
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
                    .raleway(.medium, 20)
            }
            
            Spacer()
            FilterListView(title: "Rent Now", selectedItem: .constant("Rent Now")) { _ in
                print("rent now button tapped")
            }
        }
    }
}

struct HomeDetailRentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailRentView()
            .padding()
    }
}
