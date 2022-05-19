# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."

gourmet = {name: 'Gourmet', address: '42 Quai de la Tournelle, 75005 Paris', phone_number: '01 43 54 23 31', category: 'french'}
aristide = {name: 'Aristide', address: '11 rue de Tourny, 75005 Paris', phone_number: '01 43 75 77 44', category: 'japanes'}
luigi = {name: 'Luigi', address: '25 Quai de la Tournelle, 75005 Paris', phone_number: '01 43 54 23 31', category: 'italian'}
chan = {name: 'Chan', address: '11 rue Sébastol, 75008 Paris', phone_number: '01 43 75 27 44', category: 'chinese'}
peter = {name: 'Peter', address: '130 rue Sébastol, 75008 Paris', phone_number: '01 43 75 36 48', category: 'belgian'}

#[gourmet, aristide].each do |attributes|
  #restaurant = Restaurant.create!(attributes)
  #puts "Created #{restaurant.name}"
#end
puts "Finished!"
