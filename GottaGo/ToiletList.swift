//
//  toiletList.swift
//  GottaGo
//
//  Created by Levi Stum on 2/15/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct toiletList: View {
    var body: some View {
        List(toiletData) { toilet in
            ToiletRow(toilet: toilet)
        }
    }
}

struct toiletList_Previews: PreviewProvider {
    static var previews: some View {
        toiletList()
    }
}
