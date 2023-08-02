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
class Hashtag < ApplicationRecord

    has_many :hashtag_tweets
    has_many :tweets, through: :hashtag_tweets

    scope :top, -> { order(mentions: :desc) }
end
