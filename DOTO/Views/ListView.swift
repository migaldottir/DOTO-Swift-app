//
//  ListView.swift
//  DOTO
//
//  Created by Refr Asta on 24/09/2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title!",
        "This is the second!",
        "Third!"
    ]
    
    var body: some View {
        List {
            
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            .navigationTitle("DO TO DO🦄🖌")
        }
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ListView()
            }
        }
    }
} 

