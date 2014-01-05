require 'sequel'

DB = Sequel.sqlite('thienscorner.db')

DB.create_table :recipes do
  primary_key :id
  String :name
  Integer :servings
  Integer :preparation_minutes
  Integer :cooking_minutes
end 

recipes = DB[:recipes]

recipes.insert(
  :name => 'Zuppa Tuscana',
  :servings => 4,
  :preparation_minutes => 15,
  :cooking_minutes => 60)

puts "Recipe count: #{recipes.count}"
