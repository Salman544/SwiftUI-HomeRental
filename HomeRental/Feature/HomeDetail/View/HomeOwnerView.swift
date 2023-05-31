//
//  HomeOwnerView.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct HomeOwnerView: View {
    var body: some View {
        HStack {
            Image("homeOwnerPic")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text("Garry Allen")
                    .raleway(.medium, 18)
                Text("Owner")
                    .raleway(.regular, 14)
                    .foregroundColor(.text)
            }
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "phone.fill")
                    .foregroundColor(.white)
            }
            .padding(10)
            .background(Color.darkBlue.opacity(0.5))
            .cornerRadius(5)
            
            Button {
                
            } label: {
                Image(systemName: "message.fill")
                    .foregroundColor(.white)
            }
            .padding(10)
            .background(Color.darkBlue.opacity(0.5))
            .cornerRadius(5)

        }
    }
}

struct HomeOwnerView_Previews: PreviewProvider {
    static var previews: some View {
        HomeOwnerView()
            .padding()
    }
}
