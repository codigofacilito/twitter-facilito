class Tweet < ApplicationRecord
  belongs_to :user
  has_many :retweets

  after_create :make_new_hastag

  def retweet!(user)
    retweets.create(user:user)
  end

  def make_new_hastag
    self.body.scan(/#\w+/).each do |hashtag|
      tag = Hashtag.where(identifier:hashtag).first_or_create
      tag.update(mentions: tag.mentions + 1)
    end 
  end

end

