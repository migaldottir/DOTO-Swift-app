//
//  ListViewModel.swift
//  DOTO
//
//  Created by Migaldottir on 25/09/2022.
//

import Foundation

class ListViewModel {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title:"This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second!", isCompleted:true),
            ItemModel(title: "Third!", isCompleted: false),
        ]
        items.append(contentsOf: newItems)}
}
