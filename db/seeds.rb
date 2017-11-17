# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'open-uri'
require 'json'

Ingredient.delete_all

Cocktail.delete_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drink_serialized = open(url).read
drinks = JSON.parse(drink_serialized)
# puts "#{drink['drinks'].each{ do |i| "#{i[:strIngredient1]}" }}"

drinks['drinks'].each { |e| Ingredient.create(name: e["strIngredient1"]) }

10.times do
Cocktail.create(name: Faker::Coffee.blend_name)
end
