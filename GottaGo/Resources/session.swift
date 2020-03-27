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

    init() {
        getToiletData()
    }
    
    var ref: DatabaseReference = Database.database().reference()
    
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
        
//        ref.observe(DataEventType.value) { (snapshot) in
//            self.toiletData = []
//            for child in snapshot.children {
//                if let snapshot = child as? DataSnapshot,
//                    let toilet = Toilet(snapshot: snapshot) {
//                    print("TOILET: ")
//                    print(toilet)
//                    self.toiletData.append(toilet)
//                }
//            }
//        }
    }
}
