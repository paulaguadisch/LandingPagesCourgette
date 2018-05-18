require 'dotenv/load'

Mailjet.configure do |config|
  config.api_key = ENV['CONFIG_MAILJET_API_KEY']
  config.secret_key = ENV['CONFIG_MAILJET_SECRET_KEY']
  config.default_from = 'tatijana.rajcic@gmail.com'
end