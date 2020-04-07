//
//  ReviewFormUI.swift
//  GottaGo
//
//  Created by Eric Mathusek on 4/6/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ReviewFormUI: View {
    @ObservedObject var session = FirebaseSession()
    @Environment(\.presentationMode) var creatingReview
    
    @State private var name = ""
    @State private var rating = Rating(general: 0, cleanliness: 0, location: 0, accessibility: 0, traffic: 0, size: 0)
//    @State private var coordinates = Coordinates(latitude: 0, longitude: 0)
    @State private var longitude = ""
    @State private var latitude = ""
    
    func setData() {
        self.session
        .setToiletData(toilet:
            Toilet(id: "temporaryId",
                   name: self.name,
                   rating: self.rating,
                   imageName: "mockToilet" + String(Int.random(in: 0 ..< 3)),
                   coordinates: Coordinates(latitude: (self.latitude as NSString).doubleValue,
                                            longitude: (self.longitude as NSString).doubleValue)))
        self.creatingReview.wrappedValue.dismiss()
        // self.session.getToiletData()
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Bathroom Location")) {
                    TextField("Name (Optional)", text: $name)
                    TextField("Latitude: 43.8231 N", text: $latitude)
                    TextField("Longitude: 111.7924° W", text: $longitude)
                }
                
                Section (header: Text("Ratings")) {
                    RatingView(rating: $rating.general, label: "General")
                    RatingView(rating: $rating.cleanliness, label: "Cleanliness")
                    RatingView(rating: $rating.location, label: "Location")
                    RatingView(rating: $rating.accessibility, label: "Accessibility")
                    RatingView(rating: $rating.traffic, label: "Traffic")
                    RatingView(rating: $rating.size, label: "Size")
                }
                Section {
                    Button(action: setData) {Text("Submit Review")}.navigationBarTitle(Text("Bathroom Review"))
                }
            }
        }
    }
}

struct ReviewFormUI_Previews: PreviewProvider {
    static var previews: some View {
        ReviewFormUI()
    }
}

