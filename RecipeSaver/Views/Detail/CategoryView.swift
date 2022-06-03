//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by Xiao Yuan on 6/2/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    // Computed property
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipesVM.recipes )
        }.navigationBarTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
