//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Xiao Yuan on 6/2/22.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
