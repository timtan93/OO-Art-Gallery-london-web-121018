require_relative '../config/environment.rb'

ava = Artist.new("Ava", 8)
adam = Artist.new("Adam", 12)
aaron = Artist.new("Aaron", 2)

london = Gallery.new("LG", "London")
tokyo = Gallery.new("TG", "Tokyo")
paris = Gallery.new("PG", "Paris")

sky = Painting.new("Sky", 1000, ava, london)
dog = Painting.new("Dog", 2000, ava, london)
orange = Painting.new("Orange", 3000, adam, paris)
apple = Painting.new("Apple", 4000, aaron, tokyo)
grape = Painting.new("Grape", 5000, aaron, paris)



binding.pry

puts "Bob Ross rules."
