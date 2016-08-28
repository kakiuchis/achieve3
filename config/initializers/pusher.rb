require 'pusher'



if Rails.env.production?
  Pusher.app_id = ENV["PUSHER_APP_ID_PRODUCTION"]
  Pusher.key = ENV["PUSHER_KEY_PRODUCTION"]
  Pusher.secret = ENV["PUSHER_SECRET_PRODUCTION"]
else
  Pusher.app_id = ENV["PUSHER_APP_ID_DEVELOPMENT"]
  Pusher.key = ENV["PUSHER_KEY_DEVELOPMENT"]
  Pusher.secret = ENV["PUSHER_SECRET_DEVELOPMENT"]
end
  
Pusher.logger = Rails.logger
Pusher.encrypted = true