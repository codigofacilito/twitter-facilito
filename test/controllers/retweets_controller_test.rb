require "test_helper"

class RetweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retweet = retweets(:one)
  end

  test "should get index" do
    get retweets_url
    assert_response :success
  end

  test "should get new" do
    get new_retweet_url
    assert_response :success
  end

  test "should create retweet" do
    assert_difference("Retweet.count") do
      post retweets_url, params: { retweet: { body: @retweet.body, tweet_id: @retweet.tweet_id, user_id: @retweet.user_id } }
    end

    assert_redirected_to retweet_url(Retweet.last)
  end

  test "should show retweet" do
    get retweet_url(@retweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_retweet_url(@retweet)
    assert_response :success
  end

  test "should update retweet" do
    patch retweet_url(@retweet), params: { retweet: { body: @retweet.body, tweet_id: @retweet.tweet_id, user_id: @retweet.user_id } }
    assert_redirected_to retweet_url(@retweet)
  end

  test "should destroy retweet" do
    assert_difference("Retweet.count", -1) do
      delete retweet_url(@retweet)
    end

    assert_redirected_to retweets_url
  end
end
