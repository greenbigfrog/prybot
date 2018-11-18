
require 'pry'

require 'dotenv'
Dotenv.load

require 'discordrb'

token = ENV['TOKEN']
client_id = ENV['CLIENTID']

raise "You need to both set TOKEN and CLIENTID as enviroment variables, or specify them in a file called .env" unless token && client_id

bot = Discordrb::Bot.new token: token, client_id: client_id

bot.ready do
  binding.pry
end

bot.run
