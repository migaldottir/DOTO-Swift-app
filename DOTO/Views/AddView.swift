//
//  AddView.swift
//  DOTO
//
//  Created by Migaldottir on 24/09/2022.
//

import SwiftUI
let backgroundGradient = LinearGradient(
    colors: [Color.mint, Color.blue],
    startPoint: .top, endPoint: .bottom)


struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.white)
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                } )
                .padding(14)
            }
            .navigationTitle("Add an Item 🖍")
            
        }
        
        .background(backgroundGradient)
    }
       
        func saveButtonPressed() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        
        }
        
    }
    
        
    struct AddView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                AddView()
            }
            .environmentObject(ListViewModel())
        }
    }

