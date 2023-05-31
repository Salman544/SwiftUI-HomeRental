//
//  SearchView.swift
//  PickUpApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchTxt: String = ""
    
    var body: some View {
        ZStack {
            HStack {
                HStack {
                    Image("search")
                    TextField("Search address, or near you ", text: $searchTxt)
                        .raleway(.regular, 16)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.chip)
                )
                FilterButton()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}