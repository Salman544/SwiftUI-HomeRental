//
//  HomeDetailScreen.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct HomeDetailScreen: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: HomeDetailCard
                    HomeDetailCard {
                        presentationMode.wrappedValue.dismiss()
                    } bookmarkButtonClicked: {
                        print("bookmark button cliked")
                    }
                    .frame(width: screenWidth - 30)
                    // MARK: DesciptionView
                    DescriptionView()
                    // MARK: HomeOwnerView
                    HomeOwnerView()
                    // MARK: GalleryView
                    HomeDetailGalleryView()
                    // MARK: MapView
                    HomeDetailMapView()
                        .frame(height: 300)
                    // MARK: RectangleView
                    Rectangle()
                        .frame(height: 80)
                        .hidden()
                }
            }
            HomeDetailRentView()
                .padding(5)
                .background(.white)
                .offset(y: -30)
        }
        .padding([.leading, .trailing], 20)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailScreen()
    }
}
