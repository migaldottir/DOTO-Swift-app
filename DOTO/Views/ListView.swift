//
//  ListView.swift
//  DOTO
//
//  Created by Refr Asta on 24/09/2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title:"This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted:true),
        ItemModel(title: "Third!", isCompleted: false),
    ]
    
    var body: some View {
        List {
            
            ForEach(items) { item in
                Text("Hi")
               // ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("DO TO DO🦄🖌")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView()))
        }
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ListView()
            }
        }
    }

