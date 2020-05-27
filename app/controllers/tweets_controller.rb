class TweetsController < ApplicationController

  before_action :set_tweet

  def index
    @tweet = Tweet.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    # binding.pry
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    # redirect_to root_path
    # if @tweets.save
    #   redirect_to root_path
    # else
    #   flash.now[:alert] = 'メッセージを入力してください。'
    #   render :new
    # end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text, :image, :name)
  end

  def set_tweet
    # @tweets = Tweet.find(params[:tweet_id])
  end
end
