//
//  HomeScreen.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/29/23.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var selectedFilterItem: String = "House"
    @Binding var menuTapped: Bool
    
    var filterItems = [
        "House", "Apartment", "Hotel", "Villa", "Cottage", "Student"
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(menuTapped ? [] : .vertical, showsIndicators: false) {
                LazyVStack(spacing: 20) {
                    // MARK: LocationView
                    LocationView(menuTapped: $menuTapped)
                    // MARK: SearchView
                    SearchView()
                        .disabled(menuTapped)
                    // MARK: FilterList
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(filterItems, id: \.self) { item in
                                FilterListView(title: item, selectedItem: $selectedFilterItem) { selectedItem in
                                    selectedFilterItem = selectedItem
                                }
                            }
                        }
                    }
                    .disabled(menuTapped)
                    // MARK: NearForYouView
                    ListHeaderView(title: "Near from you")
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.flexible())]) {
                            HStack(spacing: 10) {
                                ForEach(0...50, id: \.self) { item in
                                    NavigationLink(destination: HomeDetailScreen()) {
                                        NearFromYouCard()
                                    }
                                    .buttonStyle(FlatLinkStyle())
                                }
                            }
                        }
                    }
                    .disabled(menuTapped)
                    // MARK: BestForYou
                    ListHeaderView(title: "Best for you")
                        .disabled(menuTapped)
                    ForEach(0...50, id: \.self) {_ in
                        BestForYouView()
                    }
                    .disabled(menuTapped)
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(menuTapped: .constant(false))
    }
}
