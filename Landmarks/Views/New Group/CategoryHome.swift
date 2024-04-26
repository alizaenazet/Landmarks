//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Alizaenal Abidin on 26/04/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
           NavigationSplitView {
               List {
                   ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                       Text(key)
                   }
               }
               .navigationTitle("Featured")
           } detail: {
               Text("Select a Landmark")
           }
       }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}