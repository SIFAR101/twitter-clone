class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
  end

  def destroy
  end

  def edit
  end
end
