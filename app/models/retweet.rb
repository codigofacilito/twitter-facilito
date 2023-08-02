# == Schema Information
#
# Table name: retweets
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  tweet_id   :integer          not null
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Retweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  
end
