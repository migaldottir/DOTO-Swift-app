//
//  ListView.swift
//  DOTO
//
//  Created by Migaldottir on 24/09/2022.
//

import SwiftUI

struct ListView: View {
    //background data here
    
    @State var items: [ItemModel] = [
        ItemModel(title:"This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted:true),
        ItemModel(title: "Third!", isCompleted: false),
    ]
    
    var body: some View {
//all the code within body is for the View - strictly UI
        List {
            
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("DO TO DO🦄🖌")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
//background data down here
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ListView()
            }
        }
    }

