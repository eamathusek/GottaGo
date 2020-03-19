//
//  RatingView.swift
//  GottaGo
//
//  Created by Levi Stum on 3/7/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct RatingView: View {
    var rating: Int
    
    struct ratingSymbol: View {
        var symbolColor: Color
        var image: Image
        
        init(aColor: Color) {
            self.symbolColor = aColor
            self.image = Image(systemName: "star")
        }
        
        var body: some View {
            Image(systemName: "star.fill").foregroundColor(symbolColor)
        }
    }
    
    var body: some View {
        return HStack {
            ForEach(0 ..< 5) { index in
                if (index + 1) < self.rating {
                    ratingSymbol(aColor: .yellow)
                } else {
                    ratingSymbol(aColor: .gray)
                }
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 4)
    }
}
