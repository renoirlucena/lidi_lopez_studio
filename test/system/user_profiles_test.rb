require "application_system_test_case"

class UserProfilesTest < ApplicationSystemTestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "visiting the index" do
    visit user_profiles_url
    assert_selector "h1", text: "User profiles"
  end

  test "should create user profile" do
    visit user_profiles_url
    click_on "New user profile"

    fill_in "Email", with: @user_profile.email
    fill_in "First name", with: @user_profile.first_name
    fill_in "Last name", with: @user_profile.last_name
    fill_in "Password digest", with: @user_profile.password_digest
    click_on "Create User profile"

    assert_text "User profile was successfully created"
    click_on "Back"
  end

  test "should update User profile" do
    visit user_profile_url(@user_profile)
    click_on "Edit this user profile", match: :first

    fill_in "Email", with: @user_profile.email
    fill_in "First name", with: @user_profile.first_name
    fill_in "Last name", with: @user_profile.last_name
    fill_in "Password digest", with: @user_profile.password_digest
    click_on "Update User profile"

    assert_text "User profile was successfully updated"
    click_on "Back"
  end

  test "should destroy User profile" do
    visit user_profile_url(@user_profile)
    click_on "Destroy this user profile", match: :first

    assert_text "User profile was successfully destroyed"
  end
end
