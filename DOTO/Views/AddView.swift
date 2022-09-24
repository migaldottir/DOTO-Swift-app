//
//  AddView.swift
//  DOTO
//
//  Created by Refr Asta on 24/09/2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            TextField("Type something here...", text: $textFieldText)
        }
        .navigationTitle("Add an Item 🖍")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
