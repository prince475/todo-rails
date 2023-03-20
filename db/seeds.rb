# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'doing some magic'

# 20.times do
#   title = Faker::Job.title
#   description = Faker::ChuckNorris.fact
#   Todo.create(title: title, description: description)
# end

10.times do
  email = Faker::Internet.email
  password = Faker::String.random(length: 6)
  User.create(email: email, password: password)
end


puts 'Hoodini cought up with us'
