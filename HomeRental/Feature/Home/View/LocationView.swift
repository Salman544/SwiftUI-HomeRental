//
//  LocationView.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/29/23.
//

import SwiftUI

struct LocationView: View {
    
    @Binding var menuTapped: Bool
    
    var body: some View {
        HStack {
            ImageButton(image: "menu") {
                withAnimation {
                    menuTapped.toggle()
                }
            }
            VStack(alignment: .leading, spacing: 2) {
                Text("Location")
                    .foregroundColor(.text)
                    .raleway(.regular, 16)
                Button {
                    
                } label: {
                    HStack {
                        Text("Jakarta")
                            .raleway(.medium, 26)
                        Image(systemName: "chevron.down")
                    }
                    
                }
                .foregroundColor(.black)
            }
            .disabled(menuTapped)
            
            Spacer()
            
            Button {
                
            } label: {
                Image("notification")
            }

        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(menuTapped: .constant(false))
    }
}
