class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def create
  end

  def destroy
  end

  def edit
  end
end
