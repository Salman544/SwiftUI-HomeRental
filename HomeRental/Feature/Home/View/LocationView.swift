//
//  LocationView.swift
//  HomeRentalApp
//
//  Created by Muhammad Salman on 5/29/23.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        HStack {
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
        LocationView()
    }
}
