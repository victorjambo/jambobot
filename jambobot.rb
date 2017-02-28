require 'telegram/bot'

token = '359067979:AAGz5fmTckzN6GJFRuN9h_Keuzb0MAxIxOM'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
	when '/start'
		bot.api.send_message(chat_id: message.chat.id, text: "Welcome not much to do here. just trying it out in ruby")
    when '/jambo'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to my simple bot app")
	when '/location'
		bot.api.send_location(chat_id: message.chat.id, latitude: -37.807416, longitude: 144.985339)
    end
  end
end
