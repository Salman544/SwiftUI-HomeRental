//
//  HomeDetailCard.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct HomeDetailCard: View {
    
    var backButtonClicked: (() -> Void)? = nil
    var bookmarkButtonClicked: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            Image("house")
                .resizable()
                .scaledToFill()
                .overlay {
                    LinearGradient(colors: [
                        Color(hex: "#030D0D").opacity(0), Color.black.opacity(0.4)
                    ], startPoint: .top, endPoint: .center)
                }
                .cornerRadius(12)
            
            VStack(alignment: .leading) {
                HStack {
                    RoundedButtonView(image: "chevron.backward", onClick: backButtonClicked)
                    Spacer()
                    RoundedButtonView(image: "bookmark", onClick: bookmarkButtonClicked)
                }
                Spacer()
                
                Text("Dreamsville House")
                    .foregroundColor(.white)
                    .raleway(.semiBold, 28)
                
                Text("Jl. Sultan Iskandar Muda")
                    .foregroundColor(.white)
                    .raleway(.regular, 17)
                
                HStack {
                    detailView(title: "6 Bedroom", image: "bed")
                    detailView(title: "4 Bathroom", image: "bath")
                }
            }
            .padding()
        }
    }
    
    func detailView(title: String, image: String) -> some View {
        var body: some View {
            HStack {
                Image(image)
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 3)
                            .foregroundColor(Color.black.opacity(0.24))
                    )
                
                Text(title)
                    .foregroundColor(.white)
                    .raleway(.regular, 17)
            }
        }
        return body
    }
}

struct HomeDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailCard()
//            .padding()
            .frame(width: 400, height: 300)
    }
}
