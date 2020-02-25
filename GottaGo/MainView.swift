//
//  MainView.swift
//  GottaGo
//
//  Created by Levi Stum on 2/13/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            ZStack {
                MapView().edgesIgnoringSafeArea(.top).frame(height: 500)
                MapOptions().offset(x: 160, y: -200)
            }
            Spacer()
            ToiletList()
            
        }
        // Add current location/settings buttons
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
