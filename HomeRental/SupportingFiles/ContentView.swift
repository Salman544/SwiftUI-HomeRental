//
//  ContentView.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu: Bool = false
    
    var body: some View {
        ZStack {
            MenuScreen()
            ZStack {
                Color
                    .white
                    .ignoresSafeArea()
                HomeScreen(menuTapped: $showMenu)
            }
            .cornerRadius(showMenu ? 10 : 0)
            .offset(x: showMenu ? 200 : 0, y: showMenu ? 100 : 0)
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
