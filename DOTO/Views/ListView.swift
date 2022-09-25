//
//  ListView.swift
//  DOTO
//
//  Created by Migaldottir on 24/09/2022.
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
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("DO TO DO🦄🖌")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
}
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ListView()
            }
        }
    }

