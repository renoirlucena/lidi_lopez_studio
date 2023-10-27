require "application_system_test_case"

class FamilySessionsTest < ApplicationSystemTestCase
  setup do
    @family_session = family_sessions(:one)
  end

  test "visiting the index" do
    visit family_sessions_url
    assert_selector "h1", text: "Family sessions"
  end

  test "should create family session" do
    visit family_sessions_url
    click_on "New family session"

    fill_in "Description", with: @family_session.description
    fill_in "Name", with: @family_session.name
    fill_in "Price", with: @family_session.price
    click_on "Create Family session"

    assert_text "Family session was successfully created"
    click_on "Back"
  end

  test "should update Family session" do
    visit family_session_url(@family_session)
    click_on "Edit this family session", match: :first

    fill_in "Description", with: @family_session.description
    fill_in "Name", with: @family_session.name
    fill_in "Price", with: @family_session.price
    click_on "Update Family session"

    assert_text "Family session was successfully updated"
    click_on "Back"
  end

  test "should destroy Family session" do
    visit family_session_url(@family_session)
    click_on "Destroy this family session", match: :first

    assert_text "Family session was successfully destroyed"
  end
end
