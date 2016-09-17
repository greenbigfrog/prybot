
# require 'bundler/setup'
require 'pry'

require 'dotenv'
Dotenv.load

require 'discordrb'
bot = Discordrb::Bot.new token: ENV['TOKEN'], application_id: ENV['APPID'] #, log_mode: :debug

bot.ready do
  bot.game = 'private'
  binding.pry
end

bot.run
