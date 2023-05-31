//
//  HomeDetailGalleryView.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct GalleryCardView: View {
    
    var image: String
    var showMoreText: Bool
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .frame(height: 72)
                .overlay {
                    if showMoreText {
                        LinearGradient(colors: [
                            Color(hex: "#030D0D").opacity(0), Color.black.opacity(0.4)
                        ], startPoint: .top, endPoint: .center)
                    }
                }
                .cornerRadius(6)
            if showMoreText {
                Text("+5")
                    .raleway(.semiBold, 35)
                    .foregroundColor(.white)
            }
        }
    }
}

struct HomeDetailGalleryView: View {
    
    private var gridItem: GridItem {
        GridItem(.flexible())
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .raleway(.medium, 24)
            LazyVGrid(columns: [gridItem, gridItem, gridItem, gridItem]) {
                ForEach(0..<4) { id in
                    GalleryCardView(image: "gallery\(id)", showMoreText: id == 3)
                }
            }
        }
    }
}

struct HomeDetailGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailGalleryView()
    }
}
