require "application_system_test_case"

class HashtagsTest < ApplicationSystemTestCase
  setup do
    @hashtag = hashtags(:one)
  end

  test "visiting the index" do
    visit hashtags_url
    assert_selector "h1", text: "Hashtags"
  end

  test "should create hashtag" do
    visit hashtags_url
    click_on "New hashtag"

    fill_in "Identifier", with: @hashtag.identifier
    click_on "Create Hashtag"

    assert_text "Hashtag was successfully created"
    click_on "Back"
  end

  test "should update Hashtag" do
    visit hashtag_url(@hashtag)
    click_on "Edit this hashtag", match: :first

    fill_in "Identifier", with: @hashtag.identifier
    click_on "Update Hashtag"

    assert_text "Hashtag was successfully updated"
    click_on "Back"
  end

  test "should destroy Hashtag" do
    visit hashtag_url(@hashtag)
    click_on "Destroy this hashtag", match: :first

    assert_text "Hashtag was successfully destroyed"
  end
end
