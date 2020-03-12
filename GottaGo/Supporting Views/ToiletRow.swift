//
//  ToiletRow.swift
//  GottaGo
//
//  Created by Levi Stum on 2/15/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ToiletRow: View {
    var toilet: Toilet
    
    var body: some View {
        HStack {
            toilet.image
            .resizable()
            .frame(width: 50, height: 50)
            Text(toilet.name)
            Spacer()
            RatingView(rating: toilet.rating.general)
        }
    }
}

struct ToiletRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ToiletRow(toilet: toiletData[0])
            ToiletRow(toilet: toiletData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
