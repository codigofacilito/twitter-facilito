json.extract! retweet, :id, :user_id, :tweet_id, :body, :created_at, :updated_at
json.url retweet_url(retweet, format: :json)
