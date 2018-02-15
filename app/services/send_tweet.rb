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
        config.consumer_key = ENV["TCK"]
        config.consumer_secret = ENV["TCS"]
        config.access_token = ENV["TAT"]
        config.access_token_secret = ENV["TATS"]
    end
  end

  def send_tweet
    @client.update(@tweet)
  end
end
