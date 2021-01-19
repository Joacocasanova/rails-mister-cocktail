# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

ingredient_1 = Ingredient.create(name: "lemon")
ingredient_2 = Ingredient.create(name: "ice")
ingredient_3 = Ingredient.create(name: "mint leaves")

cocktail_1 = Cocktail.create(name: "Whisky on the rocks", image: "https://images.unsplash.com/photo-1585703164392-171d7f8a0af5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
cocktail_2 = Cocktail.create(name: "Mojito", image: "https://images.unsplash.com/photo-1599021456807-25db0f974333?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1958&q=80")
cocktail_3 = Cocktail.create(name: "Sex on the beach", image:"https://images.unsplash.com/photo-1486947799489-3fabdd7d32a6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")

Dose.create(description:"1Kg", cocktail: cocktail_1, ingredient: ingredient_1 )
Dose.create(description:"1Lt", cocktail: cocktail_2, ingredient: ingredient_2 )
Dose.create(description:"3Mg", cocktail: cocktail_3, ingredient: ingredient_3)