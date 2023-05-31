//
//  MapView.swift
//  HomeRental
//
//  Created by Muhammad Salman on 5/31/23.
//

import SwiftUI
import MapKit

struct HomeDetailMapView: View {
    
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -6.250635755385551,
                                           longitude: 106.78157172883628),
            latitudinalMeters: 250,
            longitudinalMeters: 250
        )
    
    let annotations = [
            City(name: "Jalan Sultan", coordinate: CLLocationCoordinate2D(latitude: -6.250557304023389, longitude: 106.78172429631178))
        ]
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) {
            MapMarker(coordinate: $0.coordinate)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailMapView()
    }
}
