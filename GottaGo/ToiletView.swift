//
//  ToiletRow.swift
//  GottaGo
//
//  Created by Levi Stum on 2/15/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ToiletView: View {
    var toilet: Toilet
    
    var body: some View {
        VStack {
            VStack {
                toilet.image
                    .resizable()
                    .frame(width: 300, height: 300)
                Text(toilet.name)
                    .font(.system(size: 50))
                RatingView(rating: .constant(toilet.rating.general)).font(.system(size: 40))
                
            }
            VStack(alignment: .leading) {
                    HStack {
                        Text("Cleanliness").font(.system(size: 30))
                        Spacer()
                        RatingView(rating: .constant(toilet.rating.cleanliness)).font(.system(size: 20))
                    }
                    HStack {
                        Text("Location").font(.system(size: 30))
                        Spacer()
                        RatingView(rating: .constant(toilet.rating.location)).font(.system(size: 20))
                    }
                    HStack {
                        Text("Accessibility").font(.system(size: 30))
                        Spacer()
                        RatingView(rating: .constant(toilet.rating.accessibility)).font(.system(size: 20))
                    }
                    HStack {
                        Text("Traffic").font(.system(size: 30))
                        Spacer()
                        RatingView(rating: .constant(toilet.rating.traffic)).font(.system(size: 20))
                    }
                    HStack {
                        Text("Location").font(.system(size: 30))
                        Spacer()
                        RatingView(rating: .constant(toilet.rating.location)).font(.system(size: 20))
                    }
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading).padding(20)
        }
        
    }
}

struct ToiletView_Previews: PreviewProvider {
    static var previews: some View {
        
            ToiletView(toilet: toiletData[0])
    }
}
