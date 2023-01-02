require 'rails_helper'

RSpec.describe Tweet, type: :model do
  it "is valid with valid attributes" do
    User.create(email: "user@name.com", password: 'password', password_confirmation: 'password')
    tweet = Tweet.new(body: "This is a tweet", user_id: 1)
    expect(tweet).to be_valid
  end

  it "is not valid without a content" do
    tweet = Tweet.new(body: nil)
    expect(tweet).to_not be_valid
  end

  it "is not valid without a user" do
    tweet = Tweet.new(body: "This is a tweet", user_id: nil)
    expect(tweet).to_not be_valid
  end
end
