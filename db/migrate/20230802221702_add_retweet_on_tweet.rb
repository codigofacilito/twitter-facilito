class AddRetweetOnTweet < ActiveRecord::Migration[7.0]
  def change
    add_reference :tweets, :retweet, foreign_key: { to_table: :retweets }, null: true, default: true
  end
end
