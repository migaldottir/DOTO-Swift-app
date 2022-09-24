//
//  DOTOApp.swift
//  DOTO
//
//  Created by Refr Asta on 24/09/2022.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
View - UI
 ViewModel - manages Models for View
 
 */
@main
struct DOTOApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
