//
//  FirebaseSession.swift
//  TODO
//
//  Created by Sebastian Esser on 9/18/19.
//  Copyright © 2019 Sebastian Esser. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseDatabase

class FirebaseSession: ObservableObject {
    
    //MARK: Properties
    @Published var toiletData: [Toilet] = []
    var ref: DatabaseReference = Database.database().reference()
    
    init() {
        getToiletData()
        // Mock setToiletData function
        // setToiletData(toilet: Toilet(id: "1234", name: "Death Star", rating: Rating(general: 4, cleanliness: 1, location: 4, accessibility: 4, traffic: 2, size: 5), imageName: "mockToilet3", coordinates: Coordinates(latitude: 111, longitude: 222)))
    }
    
    //MARK: Functions
    func getToiletData() {
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            self.toiletData = []
            for child in snapshot.children {
                for c in (child as! DataSnapshot).children {
                    let toilet = Toilet(snapshot: c as! DataSnapshot)
                    if ((toilet) != nil) {
                        self.toiletData.append(toilet!)
                    }
                }
            }
        })
    }
    
    func setToiletData(toilet:Toilet) {
        let postRef = ref.child("bathrooms").childByAutoId()
        postRef.setValue(toilet.toAnyObject())
    }
}
