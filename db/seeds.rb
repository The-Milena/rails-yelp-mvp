# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Restaurants are being destroyed...'
Restaurant.destroy_all

puts 'New restaurants are being created...'

Restaurant.create(name: 'Master Poulet', address: '40 Rue Oberkampf', category: 'belgian', phone_number: '+33612345678')
Restaurant.create(name: 'Bar Principal', address: 'Rue St Maur', category: 'french', phone_number: '+3361239375678')
Restaurant.create(name: 'Surpriz', address: '1 Rue Oberkampf', category: 'belgian', phone_number: '+33612896758')
Restaurant.create(name: 'Panorama', address: 'Rue de la Fontaine au Roi', category: 'italian', phone_number: '+336123000008')
Restaurant.create(name: 'Kodawari', address: 'Rue St Anne', category: 'japanese', phone_number: '+33787878678')

puts "#{Restaurant.count} restaurants added"
