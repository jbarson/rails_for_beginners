
puts "Running seeds"

puts "Creating the Pokeworld"
10.times do
    Location.create(
        location:Faker::Games::Pokemon.location 
    )
end

puts "Getting the Pokeworld"

locations = Location.all

puts "Creating the Pokemon"
50.times do
    Character.create(
        pokemon_name:Faker::Games::Pokemon.name,
        level:rand(1..50),
        location:locations.sample
    )
end





puts "All done!"