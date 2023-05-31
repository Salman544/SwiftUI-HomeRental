//
//  MenuScreen.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct MenuScreen: View {
    
    @State private var selectedMenu: MenuItem = .home
    
    var body: some View {
        ZStack {
            Color
                .darkBlue
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                ForEach(0..<MenuItem.allCases.count, id: \.self) { index in
                    MenuItemView(menu: MenuItem.allCases[index], selectedMenu: $selectedMenu)
                        .onTapGesture {
                            withAnimation {
                                selectedMenu = MenuItem.allCases[index]
                            }
                        }
                    if index == 2 || index == 5 {
                        Rectangle()
                            .fill(Color.white.opacity(0.5))
                            .frame(width: 160, height: 1)
                            
                    }
                }
            }
        }
    }
}

struct MenuScreen_Previews: PreviewProvider {
    static var previews: some View {
        MenuScreen()
    }
}
