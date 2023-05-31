//
//  View.swift
//  PickUpApp
//
//  Created by Muhammad Salman on 5/29/23.
//

import SwiftUI

extension View {
    
    func raleway(_ font: Raleway = .regular, _ size: CGFloat = 14) -> some View {
        self.font(.custom(font.fontName, size: size))
    }
    
    var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var screenHeight: CGFloat {
        UIScreen.main.bounds.height
    }
    
}
