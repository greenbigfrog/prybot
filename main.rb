if RUBY_VERSION < '2.2.0'
  puts 'Please update your ruby!'
  exit
end

# require 'bundler/setup'

require 'pry'

require 'dotenv'
Dotenv.load

require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: ENV['TOKEN'], application_id: ENV['APPID'], prefix: '!', advanced_functionality: false, help_command: false, debug: true #, log_mode: :debug

bot.ready do
  binding.pry
end

bot.run :async
bot.game = 'private'
bot.sync
