//
//  NoItemsView.swift
//  DOTO
//
//  Created by Refr Asta on 25/09/2022.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Quo vadis? Go add some new items to your doto list!")
                NavigationLink(
                    destination: AddView(),
                               label: {
                    Text("Add something! 🚣‍♀️")
                                       .foregroundColor(.white)
                                       .font(.headline)
                                       .frame(height: 55)
                                       .frame(maxWidth: .infinity)
                                       .background(Color.accentColor)
                                       .cornerRadius(10)
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
                
            
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    
    func addAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.easeInOut) {
                animate.toggle()
            }
        }
        
    }
    }
    
    struct NoItemsView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                NoItemsView()
                    .navigationTitle("Title")
            }
            NoItemsView()
        }
    }

