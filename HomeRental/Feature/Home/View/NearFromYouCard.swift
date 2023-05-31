//
//  HomeCard.swift
//  PickUpApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct NearFromYouCard: View {
    var body: some View {
        ZStack {
            Image("house")
                .overlay {
                    LinearGradient(colors: [
                        Color(hex: "#030D0D").opacity(0), Color.black.opacity(0.4)
                    ], startPoint: .top, endPoint: .center)
                }
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Spacer()
                    Label("1.8 km", systemImage: "mappin.and.ellipse")
                        .raleway(.medium, 15)
                        .padding(8)
                        .foregroundColor(.white)
                        .background(Color.black.opacity(0.14))
                        .cornerRadius(10)
                }
                Spacer()
                
                Text("Dreamsville House")
                    .foregroundColor(.white)
                    .raleway(.medium, 18)
                
                Text("Jl. Sultan Iskandar Muda")
                    .foregroundColor(.white)
                    .raleway(.regular, 14)
            }
            .padding()
        }
    }
}

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        NearFromYouCard()
    }
}
