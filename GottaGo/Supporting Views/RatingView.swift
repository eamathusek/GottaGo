//
//  RatingView.swift
//  GottaGo
//
//  Created by Levi Stum on 3/7/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    var label = ""
    var maxRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
//    struct ratingSymbol: View {
//        var symbolColor: Color
//        var image: Image
//
//        init(aColor: Color) {
//            self.symbolColor = aColor
//            self.image = Image(systemName: "star")
//        }
//
//        var body: some View {
//            Image(systemName: "star.fill").foregroundColor(symbolColor)
//        }
//    }
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            ForEach(1 ..< self.maxRating+1) { index in
                self.image(for: index)
                    .foregroundColor(index > self.rating ? self.offColor : self.onColor)
                    .onTapGesture {
                    self.rating = index
                }
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}
