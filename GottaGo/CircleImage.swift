//
//  CircleImage.swift
//  GottaGo
//
//  Created by Eric Mathusek on 1/28/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("bath")
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 4)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
