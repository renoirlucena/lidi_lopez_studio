require "application_system_test_case"

class ChildSessionsTest < ApplicationSystemTestCase
  setup do
    @child_session = child_sessions(:one)
  end

  test "visiting the index" do
    visit child_sessions_url
    assert_selector "h1", text: "Child sessions"
  end

  test "should create child session" do
    visit child_sessions_url
    click_on "New child session"

    fill_in "Description", with: @child_session.description
    fill_in "Name", with: @child_session.name
    fill_in "Price", with: @child_session.price
    click_on "Create Child session"

    assert_text "Child session was successfully created"
    click_on "Back"
  end

  test "should update Child session" do
    visit child_session_url(@child_session)
    click_on "Edit this child session", match: :first

    fill_in "Description", with: @child_session.description
    fill_in "Name", with: @child_session.name
    fill_in "Price", with: @child_session.price
    click_on "Update Child session"

    assert_text "Child session was successfully updated"
    click_on "Back"
  end

  test "should destroy Child session" do
    visit child_session_url(@child_session)
    click_on "Destroy this child session", match: :first

    assert_text "Child session was successfully destroyed"
  end
end
