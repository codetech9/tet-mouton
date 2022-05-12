# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Land.destroy_all

puts 'Creating Users and Lands...'

farmer1 = User.create!(email: 'briceglace@gmail.com', password: '4567SD')
owner1 = User.create!(email: 'brandon@gmail.com', password: '3459QD')
land1 = Land.create!(location: "morne-rouge", area: "500m²", description: "Une parcelle verte, humide, avec un climat doux très prospère au développement de votre cheptel." ,price: 1000, owner: owner1)

farmer2 = User.create!(email: "tartes@gmail.com", password:"5678AB")
owner2 = User.create!(email: "boiseu@gmail.com", password:"1234QS")
land2 = Land.create!(location: "gros-morne", area: "400m²", description: "Une parcelle verte, humide, avec un climat doux très prospère au développement de votre cheptel.", price: 900, owner: owner2)


farmer3 = User.create!(email: 'bartabac@gmail.com', password: '0876BD')
owner3 = User.create!(email: 'paulemploi@gmail.com', password: '3567ZD')
land3 = Land.create!(location: "rivière-salée", area: "700m²", description: "Une parcelle verte, humide, avec un climat doux très prospère au développement de votre cheptel.", price: 1600, owner: owner3)


farmer4 = User.create!(email: 'jeannémar@gmail.com', password: '3568FG')
owner4 = User.create!(email: 'adamtroijours@gmail.com', password: '8634CV')
land4 = Land.create!(location: "vert-pré", area: "800m²", description: "Une parcelle verte, humide, avec un climat doux très prospère au développement de votre cheptel.", price: 2500, owner: owner4)


farmer5 = User.create!(email: 'alaindi@gmail.com', password: '2457FG')
owner5 = User.create!(email: 'saracroche@gmail.com', password: '9753HJ')
land5 = Land.create!(location: "marigot", area: "300m²", description: "Une parcelle verte, humide, avec un climat doux très prospère au développement de votre cheptel.", price: 700, owner: owner5)


farmer6 = User.create!(email: 'edméeméamonté@gmail.com', password: '6723FH')
owner6 = User.create!(email: 'jerrybeaucoup@gmail.com', password: '8023RF')
land6 = Land.create!(location: "robert", area: "860m²", description: "Une parcelle verte, humide, avec un climat doux très prospère au développement de votre cheptel.", price: 1800, owner: owner6)

puts 'end'
