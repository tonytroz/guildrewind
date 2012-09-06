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

Tweet.create!(content: "Et yr sint, locavore mixtape esse selvage letterpress pickled messenger bag. Sed yr assumenda cardigan, ethnic nihil semiotics aliqua pinte", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "rest ethical. Fixie pickled tumblr nesciunt, duis tofu lo-fi tattooed. Art party reprehenderit tumblr, vinyl", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "godard duis marfa enim selvage vero next level. Non veniam narwhal tempor, etsy brunch esse", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "letterpress craft beer banh mi pork belly. Lo-fi salvia deserunt +1, accusamus freegan labore exercitation. Blog aute lomo street art", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "ennui dolore non, sunt mumblecore eiusmod mcsweeney's laborum whatever. In minim gentrify ex, banksy +1 organic synth assumenda", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "laborum skateboard VHS. Street art mcsweeney's chambray whatever, master cleanse butcher fingerstache aesthetic cray typewriter vegan quinoa", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "brunch art party. Mollit you probably haven't heard of them whatever seitan placeat, magna consectetur viral. Jean shorts pinterest", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "dolore ennui voluptate, seitan non esse vice. Austin pinterest PBR, jean shorts authentic incididunt nihil delectus ennui", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "cillum readymade master cleanse. Tumblr irony post-ironic Austin cupidatat, sed vero narwhal photo booth elit bespoke id consectetur squid.", url: "https://twitter.com/guildrewind")
Tweet.create!(content: "Sapiente single-origin coffee wayfarers eiusmod, ethical thundercats esse farm-to-table laborum adipisicing skateboard truffaut", url: "https://twitter.com/guildrewind")
