//
//  SwiftUIView.swift
//  GottaGo
//
//  Created by Eric Mathusek on 1/28/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI
import MapKit

class customBathroom: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 43.8176, longitude: -111.7835)
        let span = MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        // TODO: include this spot
        view.setRegion(region, animated: true)
        
        for toilet in toiletData {
            view.addAnnotation(customBathroom(title: toilet.name, subtitle: "", coordinate: toilet.locationCoordinate))
        }
    }
    
    
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
