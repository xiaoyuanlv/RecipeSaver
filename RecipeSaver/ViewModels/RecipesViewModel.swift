//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by Xiao Yuan on 6/3/22.
//

import Foundation

class RecipesViewModel : ObservableObject {
    @Published var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
    
}
