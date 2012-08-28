namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(email: "tonytroz@gmail.com",
                 password: "jdcc3dm4",
                 password_confirmation: "jdcc3dm4")
    10.times do |n|
      email = "example-#{n+1}@guildrewind.com"
      password  = "password"
      User.create!(email: email,
                   password: password,
                   password_confirmation: password)
    end
    10.times do
        game_name = Faker::Company.catch_phrase
        Game.create!(name: game_name)
    end
    users = User.all(limit: 6)
    10.times do |x|
      subject = Faker::Lorem.sentence
      content = Faker::Lorem.paragraph(5)
      guild_name = Faker::Company.name
      character_name = Faker::Name.name
      users.each { |user| user.posts.create!(game_id: x+1,
                                             content: content,
                                             guild_name: guild_name,
                                             character_name: character_name,
                                             subject: subject) }
    end
  end
end