
require 'line/bot'  # gem 'line-bot-api'

module EventProcessor
    class MessageEventProcessor

        def process(client, event)
            case event.type
            when Line::Bot::Event::MessageType::Text
                message = {
                    type: 'text',
                    text: event.message['text']
                }
                client.reply_message(event['replyToken'], message)
            end
        end

    end
end