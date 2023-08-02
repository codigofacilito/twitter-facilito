# == Schema Information
#
# Table name: hashtags
#
#  id         :integer          not null, primary key
#  identifier :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  mentions   :integer          default(0)
#
require "test_helper"

class HashtagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
