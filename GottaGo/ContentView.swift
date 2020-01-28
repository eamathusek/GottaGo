//
//  ContentView.swift
//  GottaGo
//
//  Created by Eric Mathusek on 1/27/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.largeTitle)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
//                testing testing
                }
            }
            .padding()
        }
            
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
