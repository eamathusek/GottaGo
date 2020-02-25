//
//  MapOptions.swift
//  GottaGo
//
//  Created by Levi Stum on 2/19/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct MapOptions: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Image(systemName: "gear")
            }.font(.system(size: 25))
            Divider()
            Button(action: {}) {
                Image(systemName: "location")
            }.font(.system(size: 25))
        }.frame(width: 45, height: 75)
            .padding(.top, 5).padding(.bottom, 5)
            .background(Color.white).cornerRadius(10)
            .shadow(color: Color.black, radius: 2, x: 1, y: 1)
        // Need to figure out shadow border
    }
}

struct MapOptions_Previews: PreviewProvider {
    static var previews: some View {
        MapOptions()
    }
}
