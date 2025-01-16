# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Owner.destroy_all
Car.destroy_all

owner1 = Owner.create!(nickname: "Bruce")
owner2 = Owner.create!(nickname: "Amy")
owner3 = Owner.create!(nickname: "Jane")

# Create Cars
Car.create!(brand: "Jaguar", model: "I-Pace", year: 2024, fuel: "Electric", owner: owner1)
Car.create!(brand: "Mercedes", model: "C-class", year: 2020, fuel: "Unleaded petrol", owner: owner2)
Car.create!(brand: "Tesla", model: "Model X", year: 2023, fuel: "Electric", owner: owner3)
