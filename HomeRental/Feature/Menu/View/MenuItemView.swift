//
//  MenuItemView.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct MenuItemView: View {
    
    var menu: MenuItem
    @Binding var selectedMenu: MenuItem
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 200, height: 50)
                .offset(x: -50)
                .foregroundColor(Color.white)
                .opacity(selectedMenu == menu ? 1 : 0)
            
            HStack(alignment: .center, spacing: 5) {
                Image(menu.image)
                    .resizable()
                    .frame(width: 24, height: 24)
                Text(menu.title)
                    .raleway(.medium, 20)
            }
            .foregroundColor(selectedMenu == menu ? .darkBlue : .white)
            .offset(x: 20)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
//        .offset(x: -70)
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(menu: .home, selectedMenu: .constant(.home))
    }
}
