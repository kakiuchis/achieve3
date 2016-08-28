require 'pusher'

Pusher.app_id = ENV["PUSHER_APP_ID"]


if Rails.env.production?
  Pusher.key = ENV["PUSHER_KEY_PRODUCTION"]
  Pusher.secret = ENV["PUSHER_SECRET_PRODUCTION"]
else
  Pusher.key = ENV["PUSHER_KEY_DEVELOPMENT"]
  Pusher.secret = ENV["PUSHER_SECRET_DEVELOPMENT"]
end
  
Pusher.logger = Rails.logger
Pusher.encrypted = true