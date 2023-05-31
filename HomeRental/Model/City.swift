//
//  City.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI
import CoreLocation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
