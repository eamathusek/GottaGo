//
//  toiletList.swift
//  GottaGo
//
//  Created by Levi Stum on 2/15/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ToiletList: View {
    var body: some View {
        List(toiletData) { toilet in
            ToiletRow(toilet: toilet)
        }
    }
}

struct ToiletList_Previews: PreviewProvider {
    static var previews: some View {
        ToiletList()
    }
}
