# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Property.destroy_all

10.times do
  Property.create!(
    name: %w[title1 title2 title3 title4 title5 title6 title7 title8 title9 title10].sample,
    room: rand(1...9),
    metre: rand(30...130),
    city: %w[Marseille Pau].sample.downcase,
    price: rand(100_000...500_000),
    ref: rand(1001...1011)
  )
end
