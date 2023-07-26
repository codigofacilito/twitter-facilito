require "application_system_test_case"

class RetweetsTest < ApplicationSystemTestCase
  setup do
    @retweet = retweets(:one)
  end

  test "visiting the index" do
    visit retweets_url
    assert_selector "h1", text: "Retweets"
  end

  test "should create retweet" do
    visit retweets_url
    click_on "New retweet"

    fill_in "Body", with: @retweet.body
    fill_in "Tweet", with: @retweet.tweet_id
    fill_in "User", with: @retweet.user_id
    click_on "Create Retweet"

    assert_text "Retweet was successfully created"
    click_on "Back"
  end

  test "should update Retweet" do
    visit retweet_url(@retweet)
    click_on "Edit this retweet", match: :first

    fill_in "Body", with: @retweet.body
    fill_in "Tweet", with: @retweet.tweet_id
    fill_in "User", with: @retweet.user_id
    click_on "Update Retweet"

    assert_text "Retweet was successfully updated"
    click_on "Back"
  end

  test "should destroy Retweet" do
    visit retweet_url(@retweet)
    click_on "Destroy this retweet", match: :first

    assert_text "Retweet was successfully destroyed"
  end
end
