class TweetsController < ApplicationController
  def new
  end

  def create
    tweet = params[:tweet][:content]
      SendTweet.new(tweet).perform
      redirect_to root_path
    end

  def show
  end
end
