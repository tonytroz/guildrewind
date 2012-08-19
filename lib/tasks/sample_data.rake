namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Tony Trozzo",
                         email: "tonytroz@gmail.com",
                         password: "jdcc3dm4",
                         password_confirmation: "jdcc3dm4")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@guildrewind.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.paragraph
      users.each { |user| user.posts.create!(content: content) }
    end
  end
end