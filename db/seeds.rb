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
    texte: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus risus nec ultricies condimentum. Sed pulvinar enim eget dui posuere iaculis.
    Integer nec erat tincidunt, dapibus metus et, ullamcorper justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin metus eros, nec varius tortor tristique ut. Orci varius natoque penatibus et magnis dis parturient montes,
    nascetur ridiculus mus. Mauris sed dui viverra, congue lorem id, congue diam. Integer hendrerit ultrices ligula non elementum.
    Suspendisse lobortis ligula sit amet pulvinar tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
    Nunc id sapien in tortor aliquam bibendum. Praesent pretium mollis diam at eleifend.
    Fusce vel hendrerit est. Vivamus pellentesque lorem vel purus accumsan posuere. Vestibulum ultrices sed enim quis egestas. Nunc congue egestas purus, eget cursus arcu volutpat et.
    Sed euismod dapibus eros ut ullamcorper. Nam fringilla eleifend metus, quis ultrices mauris luctus sed. Pellentesque placerat gravida lectus, at lacinia risus fringilla efficitur. Etiam lorem elit, vulputate id tempor vel, fringilla eu ligula.
    Proin at ante sed justo malesuada fermentum. Aenean cursus dignissim ultrices. Vestibulum rutrum tortor velit, in tincidunt tellus dictum id. Integer vulputate enim vitae quam pharetra, sed gravida nisl lobortis. Praesent imperdiet tellus congue leo dignissim, eget dapibus augue venenatis.
    Pellentesque nec augue pellentesque, varius libero ac, aliquet tortor.
    Phasellus gravida nisi eget augue porta, sit amet rhoncus erat dapibus. Aenean tristique ex non tempus posuere. Aenean posuere, tortor sit amet vestibulum scelerisque, mauris arcu sollicitudin massa, non molestie mi mauris sit amet lacus. Vivamus lacinia luctus odio, vitae facilisis magna bibendum quis.
    Phasellus at cursus elit, non vestibulum neque. Sed hendrerit facilisis libero, in vulputate dolor blandit non. Pellentesque libero est, luctus in accumsan eget, vestibulum sed purus. Cras molestie eleifend risus, a faucibus lectus pharetra at.
    Cras varius rutrum libero non faucibus.
    Sed mauris sapien, feugiat ac urna nec, ultricies iaculis magna. Mauris sed quam magna. Praesent ut urna est. Vivamus commodo condimentum libero, eleifend tincidunt enim egestas sed. Aliquam ullamcorper fermentum enim, et suscipit diam ornare sed.
    Proin finibus, nisl vel suscipit luctus, quam orci euismod nunc, vel venenatis sem eros id sem. Vestibulum aliquet pellentesque diam eget rhoncus.
    Proin sed orci cursus, aliquet libero quis, tempus ligula. Phasellus volutpat nunc in ante feugiat, vel imperdiet nibh posuere.
    Maecenas sed arcu sit amet ex luctus faucibus. Phasellus ac interdum massa, scelerisque cursus ante.
    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer nunc orci, feugiat in sem quis, cursus congue tellus. Sed id suscipit lacus.
    Phasellus aliquet facilisis ex, ut lobortis neque tincidunt id. Cras semper libero neque, ac tincidunt nunc molestie eget. Fusce efficitur elementum sapien, in efficitur ligula placerat a.
    Donec nec nisi lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    )
end
4.times do
  Nouvelle.create!(
    name: %w[title1 title2 title3 title4 title5 title6 title7 title8 title9 title10].sample,
    texte: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus risus nec ultricies condimentum. Sed pulvinar enim eget dui posuere iaculis.
    Integer nec erat tincidunt, dapibus metus et, ullamcorper justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin metus eros, nec varius tortor tristique ut. Orci varius natoque penatibus et magnis dis parturient montes,
    nascetur ridiculus mus. Mauris sed dui viverra, congue lorem id, congue diam. Integer hendrerit ultrices ligula non elementum.
    Suspendisse lobortis ligula sit amet pulvinar tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
    Nunc id sapien in tortor aliquam bibendum. Praesent pretium mollis diam at eleifend.
    Fusce vel hendrerit est. Vivamus pellentesque lorem vel purus accumsan posuere. Vestibulum ultrices sed enim quis egestas. Nunc congue egestas purus, eget cursus arcu volutpat et.
    Sed euismod dapibus eros ut ullamcorper. Nam fringilla eleifend metus, quis ultrices mauris luctus sed. Pellentesque placerat gravida lectus, at lacinia risus fringilla efficitur. Etiam lorem elit, vulputate id tempor vel, fringilla eu ligula.
    Proin at ante sed justo malesuada fermentum. Aenean cursus dignissim ultrices. Vestibulum rutrum tortor velit, in tincidunt tellus dictum id. Integer vulputate enim vitae quam pharetra, sed gravida nisl lobortis. Praesent imperdiet tellus congue leo dignissim, eget dapibus augue venenatis.
    Pellentesque nec augue pellentesque, varius libero ac, aliquet tortor.
    Phasellus gravida nisi eget augue porta, sit amet rhoncus erat dapibus. Aenean tristique ex non tempus posuere. Aenean posuere, tortor sit amet vestibulum scelerisque, mauris arcu sollicitudin massa, non molestie mi mauris sit amet lacus. Vivamus lacinia luctus odio, vitae facilisis magna bibendum quis.
    Phasellus at cursus elit, non vestibulum neque. Sed hendrerit facilisis libero, in vulputate dolor blandit non. Pellentesque libero est, luctus in accumsan eget, vestibulum sed purus. Cras molestie eleifend risus, a faucibus lectus pharetra at.
    Cras varius rutrum libero non faucibus.
    Sed mauris sapien, feugiat ac urna nec, ultricies iaculis magna. Mauris sed quam magna. Praesent ut urna est. Vivamus commodo condimentum libero, eleifend tincidunt enim egestas sed. Aliquam ullamcorper fermentum enim, et suscipit diam ornare sed.
    Proin finibus, nisl vel suscipit luctus, quam orci euismod nunc, vel venenatis sem eros id sem. Vestibulum aliquet pellentesque diam eget rhoncus.
    Proin sed orci cursus, aliquet libero quis, tempus ligula. Phasellus volutpat nunc in ante feugiat, vel imperdiet nibh posuere.
    Maecenas sed arcu sit amet ex luctus faucibus. Phasellus ac interdum massa, scelerisque cursus ante.
    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer nunc orci, feugiat in sem quis, cursus congue tellus. Sed id suscipit lacus.
    Phasellus aliquet facilisis ex, ut lobortis neque tincidunt id. Cras semper libero neque, ac tincidunt nunc molestie eget. Fusce efficitur elementum sapien, in efficitur ligula placerat a.
    Donec nec nisi lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    )
end

20.times do
  Property.create!(
    name: %w[Maison Appartement].sample,
    room: rand(1...9),
    metre: rand(30...130),
    city: %w[Marseille Pau Grans Artouste].sample,
    price: rand(100_000...500_000),
    ref: rand(1001...1011),
    )
end

20.times do
  Location.create!(
    name: %w[Maison Appartement].sample,
    room: rand(1...9),
    metre: rand(30...130),
    city: %w[Marseille Pau Grans Artouste].sample,
    price: rand(300...2000),
    ref: rand(1051...1100),
    )
end

1.times do
  Lot.create!(
    name: 'Terrain',
    city: "76 rue carnot Pau",
    metre: rand(1000...10_000),
    price: rand(10_000...200_000),
    ref: rand(1101...1150),
    )
end

puts "actuality #{Actuality.count}"
puts "nouvelle #{Nouvelle.count}"
puts "achat #{Property.count}"
puts "location #{Location.count}"
puts "terrain #{Lot.count}"
