# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Property.destroy_all
Actuality.destroy_all
Nouvelle.destroy_all
Location.destroy_all
Lot.destroy_all

10.times do
  Actuality.create!(
  name: %w[title1 title2 title3 title4 title5 title6 title7 title8 title9 title10].sample,
  texte: "Ceci est un texte."
)
end
4.times do
  Nouvelle.create!(
    name: %w[title1 title2 title3 title4 title5 title6 title7 title8 title9 title10].sample,
    texte: "Ceci est un texte."
  )
  end

15.times do
  Property.create!(
    name: %w[title1 title2 title3 title4 title5 title6 title7 title8 title9 title10].sample,
    room: rand(1...9),
    metre: rand(30...130),
    city: %w[Marseille Pau Grans].sample,
    price: rand(100_000...500_000),
    ref: rand(1001...1011)
  )
end

15.times do
  Location.create!(
    name: %w[title1 title2 title3 title4 title5 title6 title7 title8 title9 title10].sample,
    room: rand(1...9),
    metre: rand(30...130),
    city: %w[Marseille Pau Grans].sample,
    price: rand(300...2000),
    ref: rand(1051...1100)
  )
end

15.times do
  Lot.create!(
    name: %w[title1 title2 title3 title4 title5 title6 title7 title8 title9 title10].sample,
    city: %w[Marseille Pau Grans].sample,
    metre: rand(1000...10000),
    price: rand(10000...200000),
    ref: rand(1101...1150)
  )
end

puts "actuality #{Actuality.count}"
puts "nouvelle #{Nouvelle.count}"
puts "achat #{Property.count}"
puts "location #{Location.count}"
puts "terrain #{Lot.count}"