require "application_system_test_case"

class NewbornSessionsTest < ApplicationSystemTestCase
  setup do
    @newborn_session = newborn_sessions(:one)
  end

  test "visiting the index" do
    visit newborn_sessions_url
    assert_selector "h1", text: "Newborn sessions"
  end

  test "should create newborn session" do
    visit newborn_sessions_url
    click_on "New newborn session"

    fill_in "Description", with: @newborn_session.description
    fill_in "Name", with: @newborn_session.name
    fill_in "Price", with: @newborn_session.price
    click_on "Create Newborn session"

    assert_text "Newborn session was successfully created"
    click_on "Back"
  end

  test "should update Newborn session" do
    visit newborn_session_url(@newborn_session)
    click_on "Edit this newborn session", match: :first

    fill_in "Description", with: @newborn_session.description
    fill_in "Name", with: @newborn_session.name
    fill_in "Price", with: @newborn_session.price
    click_on "Update Newborn session"

    assert_text "Newborn session was successfully updated"
    click_on "Back"
  end

  test "should destroy Newborn session" do
    visit newborn_session_url(@newborn_session)
    click_on "Destroy this newborn session", match: :first

    assert_text "Newborn session was successfully destroyed"
  end
end
