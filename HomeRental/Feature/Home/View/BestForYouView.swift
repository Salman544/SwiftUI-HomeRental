//
//  BestForYouView.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct BestForYouView: View {
    var body: some View {
        HStack(spacing: 20) {
            Image("bestHouse")
                .resizable()
                .scaledToFill()
                .frame(width: 74, height: 74)
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 0) {
                Text("Orchad House")
                    .raleway(.medium, 18)
                Text("Rp. 2.500.000.000 / Year")
                    .raleway(.regular, 16)
                    .foregroundColor(Color.darkBlue)
                HStack {
                    Label("6 Bedroom", image: "bed")
                        .raleway(.regular, 17)
                        .scaledToFit()
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.text)
                    Label("4 Bathroom", image: "bath")
                        .raleway(.regular, 17)
                        .scaledToFit()
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.text)
                }
            }
            Spacer()
        }
    }
}

struct BestForYouView_Previews: PreviewProvider {
    static var previews: some View {
        BestForYouView()
            
    }
}
