
# require 'bundler/setup'
require 'pry'

require 'dotenv'
Dotenv.load

require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: ENV['TOKEN'], type: :user, prefix: '!', advanced_functionality: false, help_command: false, debug: true #, log_mode: :debug

bot.ready do
  bot.game = 'private'
  binding.pry
end

bot.run
