# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'before'

require 'faker'

puts 'test'

User.destroy_all
Land.destroy_all

puts 'Creating 10 fake users and lands...'

10.times do
  user = User.create(
    last_name: Faker::Name.unique.name,
    first_name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password(min_length: 6)
  )
  puts " user created  end ?"
end

10.times do
  Land.create(
    location: Faker::Address.city,
    area: Faker::Number.within(range: 150..400),
    price: Faker::Number.within(range: 100..200),
    owner_id: User.select(:id).sample
  )
  puts " land created  end ?"
end




puts 'end'
