# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pokemon.delete_all
User.delete_all

response = HTTParty.get("https://pokeapi.co/api/v2/pokemon/")
response["pokemons"].each do |pokemon|
  Pokemon.create({
    name: pokemon["name"],
    })
  end

# creation of users
User.create([
  {
    name: "Jimmy",
    email: "jimmy@test.com",
    password: "test",
    profile_image: "https://vignette.wikia.nocookie.net/youtubepoop/images/f/f7/5Pikachu.png/revision/latest?cb=20141108062013"
  }
  ]);
