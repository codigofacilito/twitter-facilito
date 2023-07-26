class Tweet < ApplicationRecord
  belongs_to :user

  after_create :make_new_hastag
  
  private 

  def make_new_hastag
  end

end

