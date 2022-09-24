//
//  ListRowView.swift
//  DOTO
//
//  Created by Refr Asta on 24/09/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
            Text(item.title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First item!", isCompleted: false)
    static var item2 = ItemModel(title: "Second Item.", isCompleted: true)
    static var previews: some View {
        Group {
            //created a Group to be able to preview item1 and item2
            
            ListRowView(item: item1)
            ListRowView(item: item2)
            
            
        }
    }
    
}
