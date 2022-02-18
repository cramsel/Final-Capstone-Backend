# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "NotPeter", email: "test@test.com", first_name: "Peter", last_name: "Jang", description: "Definitely not Peter", password: "password")
User.create(username: "Siames", email: "test2@test.com", first_name: "", last_name: "", description: "Argentinian band", password: "password")
User.create(username: "Luxi", email: "test3@test.com", first_name: "Calum", last_name: "Amsel", description: "Wannabe Composer", password: "password")

Post.create(
  user_id: 3,
  audio_url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-15.mp3",
  title: "Playing around with procedural stuff",
  description: "Found a new program to make procedural music, thanks Java",
)
Post.create(
  user_id: 2,
  audio_url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
  title: "SoundHelix 1",
  description: "",
)
Post.create(
  user_id: 2,
  audio_url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
  title: "SoundHelix 4",
  description: "",
)

puts "Seeds planted"
