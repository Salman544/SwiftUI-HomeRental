//
//  HomeView.swift
//  PickUpApp
//
//  Created by Muhammad Salman on 5/29/23.
//

import SwiftUI

struct HomeScreen: View {
    
    private var filterItems = [
        "House", "Apartment", "Hotel", "Villa", "Cottage", "Student"
    ]
    
    @State var selectedFilterItem: String = "House"
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 20) {
                    // MARK: LocationView
                    LocationView()
                    // MARK: SearchView
                    SearchView()
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
                    // MARK: NearForYouView
                    ListHeaderView(title: "Near from you")
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.flexible())]) {
                            HStack(spacing: 10) {
                                ForEach(0...50, id: \.self) { item in
                                    NavigationLink(destination: EmptyView()) {
                                        NearFromYouCard()
                                    }
                                    .buttonStyle(FlatLinkStyle())
                                }
                            }
                        }
                    }
                    // MARK: BestForYou
                    ListHeaderView(title: "Best for you")
                    ForEach(0...50, id: \.self) {_ in
                        BestForYouView()
                    }
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
