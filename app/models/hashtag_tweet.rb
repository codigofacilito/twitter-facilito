# == Schema Information
#
# Table name: hashtag_tweets
#
#  id         :integer          not null, primary key
#  hashtag_id :integer          not null
#  tweet_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class HashtagTweet < ApplicationRecord
  belongs_to :hashtag
  belongs_to :tweet
end
