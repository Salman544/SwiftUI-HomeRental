//
//  FilterListView.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

struct FilterListView: View {
    
    var title: String
    @Binding var selectedItem: String
    var onClick: ((String) -> Void)? = nil
    
    var body: some View {
        Button {
            onClick?(title)
        } label: {
            Text(title)
                .raleway(title == selectedItem ? .bold : .regular, 16)
                .foregroundColor(title == selectedItem ? .white : .black)
                .padding(16)
                .background(
                    Group(content: {
                        if title == selectedItem {
                            OceanBlueGradient(hasShadow: true)
                        } else {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(.chip)
                        }
                    })
                )
        }

    }
}

struct FilterListView_Previews: PreviewProvider {
    static var previews: some View {
        FilterListView(title: "House", selectedItem: .constant("House"))
    }
}
