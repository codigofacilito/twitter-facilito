class HashtagTweet < ApplicationRecord
  belongs_to :hashtag
  belongs_to :tweet
end
