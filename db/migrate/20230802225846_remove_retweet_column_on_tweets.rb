class RemoveRetweetColumnOnTweets < ActiveRecord::Migration[7.0]
  def change
    remove_column :tweets, :retweets
  end
end
