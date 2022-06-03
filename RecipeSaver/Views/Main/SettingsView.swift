//
//  SettingsView.swift
//  RecipeSaver
//
//  Created by Xiao Yuan on 6/2/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("Settings").navigationTitle("v1.0.0")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
