class TopPageController < ApplicationController
  def index
    @tweets = Tweet.all
  end
end
