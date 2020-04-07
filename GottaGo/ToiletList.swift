//
//  toiletList.swift
//  GottaGo
//
//  Created by Levi Stum on 2/15/20.
//  Copyright © 2020 Eric Mathusek. All rights reserved.
//

import SwiftUI

struct ToiletList: View {
    
    //MARK: Properties
    @ObservedObject var session = FirebaseSession()
    
    var body: some View {
            List {ForEach(self.session.toiletData) { toilet in
                    NavigationLink(destination: ToiletView(toilet: toilet)) {
                     ToiletRow(toilet: toilet)
                    }
                }
            }
    }
}

struct ToiletList_Previews: PreviewProvider {
    static var previews: some View {
        ToiletList()
    }
}
