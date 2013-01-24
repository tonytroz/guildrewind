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

Tweet.create!(content: "@GuildRewind Et yr sint, locavore mixtape esse selvage letterpress p messenger bag. Scardigan, ethnic nihil semiotics aliqua pinte", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@mmorpg rest ethical. Fixie pickled tumblr nesciuu lo-fi tattooearty reprehenderit tumblr, vinyl", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@WoW godard duis marfa enim selvage vero next level. Non veniamor, etsy brunch esse", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@EQ2 letterpress craft beer banh mi pork beia deserunt +1, accusamuabore exercitation. Blog aute lomo street art", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@Lineage2 ennui dolore non, sure eiusmod mcsweeney's laborum whatever. In minim gentrify ex, banksy +1 organic synth assumenda", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@Blizzard laborum skateboard VHSey's chambray whatever, master cleacher fingerstache aesthetic cray typewriter vegan quinoa", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@NaughtyDog brunch art party. Mollit you  seitan placeat, magna consectetur viral. Jean shorts pinterest", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@Braid dolore ennui voluptate, seitan non esse vice. Austin pinterest PBR, jean shorts authentic incididunt nihil delectus ennui", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@IndieGames cillum readymade master cleans post-ironic Austin cupidatat, sed vero narwhal photo booth elit bespoke id consectetur squid.", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "@MMOs Sapiente single-origin coffod, ethical thundercats esse farm-to-table laborum adipisicing skateboard truffaut", url: "https://twitter.com/guildrewind")
