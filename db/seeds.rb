require 'factory_bot_rails'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(birthdate: "2001-01-01", patient_number: "ABC123")

FactoryBot.create(:screener)
FactoryBot.create(:option)
FactoryBot.create(:option, name:'Feeling down, depressed, or hopeless')