# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all
ingredient_1 = Ingredient.create(name: "lemon")
ingredient_2 = Ingredient.create(name: "ice")
ingredient_3 = Ingredient.create(name: "mint leaves")

cocktail_1 = Cocktail.create(name: "Whisky on the rocks")
cocktail_2 = Cocktail.create(name: "Mojito")
cocktail_3 = Cocktail.create(name: "Sex on the beach")

Dose.create(description:"1Kg", cocktail: cocktail_1, ingredient: ingredient_1 )
Dose.create(description:"1Lt", cocktail: cocktail_2, ingredient: ingredient_2 )
Dose.create(description:"3Mg", cocktail: cocktail_3, ingredient: ingredient_3)