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

Comment.create(user_id: 1, post_id: 2, body: "Such a cool song")
Comment.create(user_id: 1, post_id: 1, body: "Good to see you working on this")
Comment.create(user_id: 1, post_id: 3, body: "Neat new song!")
Comment.create(user_id: 1, post_id: 2, body: "Coming back to this song, still as cool now.")

Comment.create(user_id: 2, post_id: 3, body: "Don't forget our upcoming concert on March 3rd, 2022!")
Comment.create(user_id: 3, post_id: 3, body: "Wish I could go")
Comment.create(user_id: 3, post_id: 1, body: "Not sure if I want to keep this one up, it's a bit iffy")
Comment.create(user_id: 3, post_id: 1, body: "I guess I'll keep it up for now")

Comment.create(user_id: 1, post_id: 3, body: "Can't wait to see you guys in person!")
Comment.create(user_id: 3, post_id: 3, body: "Cool new song, like the chords")
Comment.create(user_id: 1, post_id: 1, body: "Glad you're keeping it up!")

puts "Seeds planted"
