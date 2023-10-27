require "application_system_test_case"

class BabySessionsTest < ApplicationSystemTestCase
  setup do
    @baby_session = baby_sessions(:one)
  end

  test "visiting the index" do
    visit baby_sessions_url
    assert_selector "h1", text: "Baby sessions"
  end

  test "should create baby session" do
    visit baby_sessions_url
    click_on "New baby session"

    fill_in "Description", with: @baby_session.description
    fill_in "Name", with: @baby_session.name
    fill_in "Price", with: @baby_session.price
    click_on "Create Baby session"

    assert_text "Baby session was successfully created"
    click_on "Back"
  end

  test "should update Baby session" do
    visit baby_session_url(@baby_session)
    click_on "Edit this baby session", match: :first

    fill_in "Description", with: @baby_session.description
    fill_in "Name", with: @baby_session.name
    fill_in "Price", with: @baby_session.price
    click_on "Update Baby session"

    assert_text "Baby session was successfully updated"
    click_on "Back"
  end

  test "should destroy Baby session" do
    visit baby_session_url(@baby_session)
    click_on "Destroy this baby session", match: :first

    assert_text "Baby session was successfully destroyed"
  end
end
