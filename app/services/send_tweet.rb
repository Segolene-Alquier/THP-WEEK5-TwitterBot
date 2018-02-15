require 'twitter'

class SendTweet
  def initialize(content)
    @tweet = content
  end

  def perform
    log_in_to_twitter
    send_tweet
  end

  def log_in_to_twitter
    @client = Twitter::REST::Client.new do |config|
        config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
        config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
        config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
        config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
  end

  def send_tweet
    @client.update(@tweet)
  end
end
