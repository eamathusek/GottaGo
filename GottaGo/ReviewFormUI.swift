//
//  ReviewFormUI.swift
//  GottaGo
//
//  Created by Eric Mathusek on 4/6/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ReviewFormUI: View {
    var body: some View {
        NavigationView{

            Form {
                    Picker(selection: .constant(2), label: Text("Cleanliness")) {
                        /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }
}

struct ReviewFormUI_Previews: PreviewProvider {
    static var previews: some View {
        ReviewFormUI()
    }
}
