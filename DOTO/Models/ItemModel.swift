//
//  ItemModel.swift
//  DOTO
//
//  Created by Refr Asta on 24/09/2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
}
