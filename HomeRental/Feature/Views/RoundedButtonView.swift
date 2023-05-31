//
//  RoundedButtonView.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI

struct RoundedButtonView: View {
    
    var image: String
    var onClick: (() -> Void)? = nil
    
    var body: some View {
        Button {
            onClick?()
        } label: {
            Circle()
                .frame(width: 34, height: 34)
                .foregroundColor(.black.opacity(0.24))
                .overlay {
                    Image(systemName: image)
                }
        }
        .foregroundColor(.white)
        .background(.clear)

    }
}

struct RoundedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButtonView(image: "chevron.backward")
            .previewLayout(.sizeThatFits)
    }
}
