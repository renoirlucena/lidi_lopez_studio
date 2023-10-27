require "application_system_test_case"

class CakeSmashSessionsTest < ApplicationSystemTestCase
  setup do
    @cake_smash_session = cake_smash_sessions(:one)
  end

  test "visiting the index" do
    visit cake_smash_sessions_url
    assert_selector "h1", text: "Cake smash sessions"
  end

  test "should create cake smash session" do
    visit cake_smash_sessions_url
    click_on "New cake smash session"

    fill_in "Description", with: @cake_smash_session.description
    fill_in "Name", with: @cake_smash_session.name
    fill_in "Price", with: @cake_smash_session.price
    click_on "Create Cake smash session"

    assert_text "Cake smash session was successfully created"
    click_on "Back"
  end

  test "should update Cake smash session" do
    visit cake_smash_session_url(@cake_smash_session)
    click_on "Edit this cake smash session", match: :first

    fill_in "Description", with: @cake_smash_session.description
    fill_in "Name", with: @cake_smash_session.name
    fill_in "Price", with: @cake_smash_session.price
    click_on "Update Cake smash session"

    assert_text "Cake smash session was successfully updated"
    click_on "Back"
  end

  test "should destroy Cake smash session" do
    visit cake_smash_session_url(@cake_smash_session)
    click_on "Destroy this cake smash session", match: :first

    assert_text "Cake smash session was successfully destroyed"
  end
end
