# == Schema Information
#
# Table name: followers
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  follower_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class FollowerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
