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
    
    var body: some View {
        NavigationView{

            Form {
                Section (header: Text("Bathroom Location")) {
                    TextField("Name (Optional)", text: $Name)
                    TextField("Latitude: 43.8231 N", text: $Latitude)
                    TextField("Longitude: 111.7924° W", text: $Longitude)
                }
                
                Section (header: Text("Ratings")) {
                    Picker(selection: .constant(1), label: Text("General Rating", tableName: General)) {
                        /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    Picker(selection: .constant(2), label: Text("Cleanliness", tableName: Cleanliness)) {
                        /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    Picker(selection: .constant(3), label: Text("Location", tableName: Location)) {
                        /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    Picker(selection: .constant(4), label: Text("Accessibility", tableName: Accessibility)) {
                        /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    Picker(selection: .constant(1), label: Text("Traffic", tableName: Traffic)) {
                        /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                }
            }.navigationBarTitle(Text("Bathroom Review"))
        }
    }
}

struct ReviewFormUI_Previews: PreviewProvider {
    static var previews: some View {
        ReviewFormUI()
    }
}
