//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Xiao Yuan on 6/2/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Vegan Gravy", image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5825152.jpg&w=272&h=272&c=sc&poi=face&q=60", description: "Do you know how to make vegan gravy?", ingredients: "Prep: 15 mins Cook: 30 mins Total:45 mins Servings: 10 Yield:1 loaf", directions: "Preheat the oven to 400 degrees F (200 degrees C). Spray a 9x5-inch baking pan with cooking spray. Beat 1/2 cup soy milk, sugar, vegetable shortening, salt, and vanilla extract together in a large bowl until well blended. Mix flour, cornmeal, and baking powder together in a bowl. Stir flour mixture into sugar mixture, alternating with the remaining 1 cup soy milk. Beat until well blended. Pour batter into the prepared pan. Bake in the preheated oven until a toothpick inserted in the center comes out clean, 30 to 35 minutes.", category: "Main", datePublished: "2022-06-01", url: "https://www.allrecipes.com/recipe/261732/moist-sweet-vegan-cornbread/"),
        Recipe(name: "Moist, Sweet Vegan Cornbread", image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5039670.jpg&w=272&h=272&c=sc&poi=face&q=60", description: "Do you know how to make vegan moist and sweet cornbread?", ingredients: "Prep: 15 mins Cook: 30 mins Total:45 mins Servings: 10 Yield:1 loaf", directions: "Preheat the oven to 400 degrees F (200 degrees C). Spray a 9x5-inch baking pan with cooking spray. Beat 1/2 cup soy milk, sugar, vegetable shortening, salt, and vanilla extract together in a large bowl until well blended. Mix flour, cornmeal, and baking powder together in a bowl. Stir flour mixture into sugar mixture, alternating with the remaining 1 cup soy milk. Beat until well blended. Pour batter into the prepared pan. Bake in the preheated oven until a toothpick inserted in the center comes out clean, 30 to 35 minutes.", category: "Breakfast", datePublished: "2022-06-01", url: "https://www.allrecipes.com/recipe/261732/moist-sweet-vegan-cornbread/"),
        Recipe(name: "Vegan Tuna Salad", image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F3277193.jpg&w=272&h=272&c=sc&poi=face&q=60", description: "Do you know how to make vegan moist and sweet cornbread?", ingredients: "I am a vegan. I was craving tuna salad sandwich. This was perfect.", directions: "Preheat the oven to 400 degrees F (200 degrees C). Spray a 9x5-inch baking pan with cooking spray. Beat 1/2 cup soy milk, sugar, vegetable shortening, salt, and vanilla extract together in a large bowl until well blended. Mix flour, cornmeal, and baking powder together in a bowl. Stir flour mixture into sugar mixture, alternating with the remaining 1 cup soy milk. Beat until well blended. Pour batter into the prepared pan. Bake in the preheated oven until a toothpick inserted in the center comes out clean, 30 to 35 minutes.", category: "Salad", datePublished: "2022-06-01", url: "https://www.allrecipes.com/recipe/261732/moist-sweet-vegan-cornbread/"),
    ]
}
