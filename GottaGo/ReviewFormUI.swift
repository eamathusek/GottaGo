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
    
    @State private var name = ""
    @State private var rating = Rating(general: 0, cleanliness: 0, location: 0, accessibility: 0, traffic: 0, size: 0)
    
    var body: some View {
//        let toilet = Toilet(id: "1", name: self.Name, rating: Rating(general: self.General, cleanliness: self.Cleanliness, location: self.Location, accessibility: self.Accessibility, traffic: self.Traffic, size: self.Size), imageName: "mockToilet3", coordinates: Coordinates(latitude: self.Latitude, longitude: self.Longitude))
        NavigationView{
            Form {
                Section (header: Text("Bathroom Location")) {
                    TextField("Name (Optional)", text: $name)
//                    TextField("Latitude: 43.8231 N", text: $Latitude)
//                    TextField("Longitude: 111.7924° W", text: $Longitude)
                }
                
                Section (header: Text("Ratings")) {
                    Text("General")
                    RatingView(rating: $rating.general)
                    Text("Cleanliness")
                    RatingView(rating: $rating.cleanliness)
                    RatingView(rating: $rating.location)
                    RatingView(rating: $rating.accessibility)
                    RatingView(rating: $rating.traffic)
                    RatingView(rating: $rating.size)
                }
                Button(action:{}) {
                    Text("Submit Review")
            }.navigationBarTitle(Text("Bathroom Review"))
            }
        }
    }
}

struct ReviewFormUI_Previews: PreviewProvider {
    static var previews: some View {
        ReviewFormUI()
    }
}

