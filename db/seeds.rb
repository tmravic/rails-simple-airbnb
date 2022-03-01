require 'open-uri'
require "resolv-replace"

puts "Seed starting"
Flat.destroy_all
puts "Destroy them all"

5.times do
  puts "Trying to get file"
  file = URI.open("https://source.unsplash.com/random/1200x350?house")
  puts "Got file"
  flat = Flat.new(
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  )
  flat.save!
  flat.photo.attach(io: file, filename: 'flat.jpg', content_type: 'image/jpg')
end
