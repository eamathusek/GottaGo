//
//  ReviewFormUI.swift
//  GottaGo
//
//  Created by Eric Mathusek on 4/6/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ReviewFormUI: View {
    @State private var Name = ""
    @State private var Latitude = ""
    @State private var Longitude = ""
    @State private var General = ""
    @State private var Cleanliness = ""
    @State private var Location = ""
    @State private var Accessibility = ""
    @State private var Traffic = ""
    @State private var selection1 = 0
    @State private var selection2 = 0
    @State private var selection3 = 0
    @State private var selection4 = 0
    @State private var selection5 = 0

    let colors = ["1","2","3","4", "5"]
    
    var body: some View {
        NavigationView{

            Form {
                Section (header: Text("Bathroom Location")) {
                    TextField("Name (Optional)", text: $Name)
                    TextField("Latitude: 43.8231 N", text: $Latitude)
                    TextField("Longitude: 111.7924° W", text: $Longitude)
                }
                
                Section (header: Text("Ratings")) {
                    Picker(selection: $selection1, label: Text("General Rating", tableName: General)) {
                            ForEach(0 ..< colors.count) { index in
                            Text(self.colors[index]).tag(index)
                            }
                    }
                    Picker(selection: $selection2, label: Text("Cleanliness", tableName: Cleanliness)) {
                        ForEach(0 ..< colors.count) { index in
                        Text(self.colors[index]).tag(index)
                        }
                    }
                    Picker(selection: $selection3, label: Text("Location", tableName: Location)) {
                        ForEach(0 ..< colors.count) { index in
                        Text(self.colors[index]).tag(index)
                        }
                    }
                    Picker(selection: $selection4, label: Text("Accessibility", tableName: Accessibility)) {
                        ForEach(0 ..< colors.count) { index in
                        Text(self.colors[index]).tag(index)
                        }
                    }
                    Picker(selection: $selection5, label: Text("Traffic", tableName: Traffic)) {
                        ForEach(0 ..< colors.count) { index in
                        Text(self.colors[index]).tag(index)
                        }
                    }
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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

