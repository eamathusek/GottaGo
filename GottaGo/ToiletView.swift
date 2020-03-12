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
            toilet.image
                .resizable()
                .frame(width: 300, height: 300)
            Text(toilet.name)
                .font(.system(size: 50))
            RatingView(rating: toilet.rating.general).font(.system(size: 40))
            Spacer()
        }
    }
}

struct ToiletView_Previews: PreviewProvider {
    static var previews: some View {
        
            ToiletView(toilet: toiletData[0])
    }
}
