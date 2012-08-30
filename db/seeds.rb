# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: "tonytroz@gmail.com",
                 password: "jdcc3dm4",
                 password_confirmation: "jdcc3dm4")
game1 = Game.create!(name: "World of Warcraft")
game2 = Game.create!(name: "EverQuest")
game3 = Game.create!(name: "Lineage II")
game1.servers.create(name: "Server 1")
