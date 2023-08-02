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
require "test_helper"

class HashtagTweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
