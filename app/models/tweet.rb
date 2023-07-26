class Tweet < ApplicationRecord
  belongs_to :user

  after_create :make_new_hastag
  
  # private 

  def make_new_hastag
    self.body.scan(/#\w+/).each do |hashtag|
      Hashtag.where(identifier:hashtag).first_or_create
    end 
  end
end

