//
//  SwiftUIView.swift
//  GottaGo
//
//  Created by Eric Mathusek on 1/28/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 43.8260227, longitude: -111.7896876)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        // TODO: include this spot
        var spot = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(
        latitude: 43.8260227, longitude: -111.7896876)))
        view.setRegion(region, animated: true)
    }
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
