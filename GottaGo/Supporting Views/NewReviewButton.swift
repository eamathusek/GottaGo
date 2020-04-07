//
//  NewReviewButton.swift
//  GottaGo
//
//  Created by Levi Stum on 4/6/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct NewReviewButton: View {
    @State private var showNewReview = false
    
    var body: some View {
//        NavigationView {
//            NavigationLink(destination: ReviewFormUI()) {
                Button(action: { self.showNewReview = true }) {
                Image(systemName: "plus")
                }.font(.system(size: 25)).frame(width: 45, height: 45)
                .padding(5)
                .background(Color.white).cornerRadius(100)
                    .shadow(color: Color.black, radius: 2, x: 1, y: 1).sheet(isPresented: $showNewReview) {
                        ReviewFormUI()
        }
//            }
//        }
    }
}

struct NewReviewButton_Previews: PreviewProvider {
    static var previews: some View {
        NewReviewButton()
    }
}
