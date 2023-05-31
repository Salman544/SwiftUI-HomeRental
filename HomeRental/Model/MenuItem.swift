//
//  MenuItem.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import Foundation

enum MenuItem: String, CaseIterable {
    case home
    case profile
    case nearby
    case bookmark
    case notification
    case message
    case setting
    case help
    case logout
    
    var title: String {
        rawValue.capitalized
    }
    
    var image: String {
        "\(rawValue)Menu"
    }
    
}
