class TweetsController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy update edit]

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order(created_at: :asc)
  end

  def create
    @tweet = Tweet.new(tweet_params)
    respond_to do |format|
      if @tweet.save
        format.turbo_stream
      else
        format.html do
          flash[:tweet_errors] = @tweet.errors.full_messages
          redirect_to root_path
        end
      end
    end
  end

  def destroy
  end

  def update
  end

  def edit
  end

  def tweet_params
    params.require(:tweet).permit(:body, :report_counter)
  end
end
