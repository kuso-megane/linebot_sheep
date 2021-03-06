
require 'line/bot'  # gem 'line-bot-api'
require_relative '../domain/EventProcessor'

class ApiController < ApplicationController
    

    protect_from_forgery except: [:callback] # CSRF対策無効化

    def client
        @client ||= Line::Bot::Client.new { |config|
            config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
            config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
        }
    end

    def callback
        body = request.body.read

        signature = request.env['HTTP_X_LINE_SIGNATURE']

        if (ENV['RAILS_ENV'] == 'production')
            unless client.validate_signature(body, signature)
                halt 400, {'Content-Type' => 'text/plain'}, 'Bad Request'
            end
        end

        events = client.parse_events_from(body)

        events.each do |event|
        case event
            when Line::Bot::Event::Message
                processor = EventProcessor::MessageEventProcessor.new
                processor.process(client, event)
            end
        end

        "OK"
    end
end

