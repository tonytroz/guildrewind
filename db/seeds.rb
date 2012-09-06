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

Tweet.create!(content: "a"*140, url: "https://twitter.com/guildrewind")
Tweet.create!(content: "You could apply the same thing to the Mass effect 3 ending as well. I've previously talked about the true dynamic nature of WH space in EVE, and I want to use last weekends Op as a backdrop to sum that thought up and perhaps add some clarity to it as well. Don't capture the South GY unless you know exactly what you are doing. That meant ditching my Sentinel soul, scaling back on my Shaman talents, and weaving in a very strong dose of Justicar. This probably is the most 'normal' character of the three. Then my enemies are on me like white on rice.", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "Oh yeah, just every damn expansion at this point, that's all. What I enjoyed the most and felt most confirmed in, is the overall feel of the game: the atmosphere, the large scale world, the music and art, and of course the classes and races which I find, for the most part very accomplished and fun to play. At some point, one of these 'expert analysts' is going to mention that, perhaps, in order to make money in the gaming sector, you might want to try making a good game, right? First, we notice there are no petite Republic chicks.", url: "https://twitter.com/guildrewind")