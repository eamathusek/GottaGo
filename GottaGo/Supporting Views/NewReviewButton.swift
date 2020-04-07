//
//  NewReviewButton.swift
//  GottaGo
//
//  Created by Levi Stum on 4/6/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct NewReviewButton: View {
    var body: some View {
        Button(action: { }) {
        Image(systemName: "plus")
        }.font(.system(size: 25)).frame(width: 45, height: 45)
        .padding(5)
        .background(Color.white).cornerRadius(100)
        .shadow(color: Color.black, radius: 2, x: 1, y: 1)
    }
}

struct NewReviewButton_Previews: PreviewProvider {
    static var previews: some View {
        NewReviewButton()
    }
}
