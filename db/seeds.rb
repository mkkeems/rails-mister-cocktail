# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
require 'open-uri'

Ingredient.destroy_all

uri = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
response = JSON.parse(open(uri).read)

response["drinks"].each do |ingredient|
  name = ingredient["strIngredient1"]
  Ingredient.create(name: name)
end
