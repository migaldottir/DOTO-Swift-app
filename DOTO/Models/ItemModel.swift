//
//  ItemModel.swift
//  DOTO
//
//  Created by Migaldottir on 24/09/2022.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}

//ItemModel(id: String, title: String, isCompleted: Bool)
//   //used when we wanna update items
//ItemModel(title: String, isCompleted:Bool)
//   //used when we create new models
