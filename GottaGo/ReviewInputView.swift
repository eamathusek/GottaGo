//
//  ReviewInput.swift
//  GottaGo
//
//  Created by Eric Mathusek on 4/2/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ReviewInputView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username")
                .font(.callout)
                .bold()
            TextField("Enter username...", text: username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
        
    }
}

struct ReviewInputView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewInputView()
    }
}
