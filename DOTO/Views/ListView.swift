//
//  ListView.swift
//  DOTO
//
//  Created by Migaldottir on 24/09/2022.
//

import SwiftUI

struct ListView: View {
    //background data here
    
    @EnvironmentObject var listViewModel: ListViewModel
       
    var body: some View {
//all the code within body is for the View - strictly UI
        List {
            
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                            
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("DO TO DO🦄🖌")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }

}
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ListView()
            }
            .environmentObject(ListViewModel())
        }
    }

