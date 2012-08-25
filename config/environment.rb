# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Guildrewind::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "Guildrewind.com",
  :authentication => "plain",
  :user_name => "troz@guildrewind.com",
  :password => "!Omdhafeiei0!",
  :enable_starttls_auto => true 
}