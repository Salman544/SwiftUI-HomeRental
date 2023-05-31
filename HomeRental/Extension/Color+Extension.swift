//
//  Color+Extension.swift
//  PickUpApp
//
//  Created by Muhammad Salman on 5/30/23.
//

import SwiftUI

extension Color {
    static let text = Color("text")
    static let chip = Color("chip")
    static let lightBlue = Color("lightBlue")
    static let darkBlue = Color("darkBlue")
    static let tealishBlue = Color("tealishBlue")
    
    init(hex: String) {
        var hexString = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}
