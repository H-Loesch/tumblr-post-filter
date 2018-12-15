require 'dotenv' #uses .env file to define env variables (like API keys)
require 'optparse'
require 'tumblr_client' #ruby gem for interacting with the tumblr API

#initialize tumblr tumblr_client
def init_client
  #load env vars from file
  Dotenv.load

  #define tumblr client
  return Tumblr::client.new({
    consumer_key: ENV['TUMBLR_CONSUMER_KEY'],
    consumer_secret: ENV['TUMBLR_CONSUMER_SECRET']
    })
end
