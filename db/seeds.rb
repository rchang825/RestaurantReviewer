# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.create(name: "Sunflower Garden", location: "Somewhere Greenwood Ave, Seattle, WA 98133")
Restaurant.create(name: "Banh Town", location: "Somewhere on Holman, Seattle, WA 98133")
Restaurant.create(name: "La Cabana", location: "103rd St, Seattle, WA 98133")
Restaurant.create(name: "Diva Espresso", location: "Holman probably, Seattle, WA 98133")
Restaurant.create(name: "Lenny's Produce", location: "Next to Sunflower Garden, Seattle, WA 98133")
