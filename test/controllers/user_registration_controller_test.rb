require "test_helper"

class UserRegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_registration_new_url
    assert_response :success
  end

  test "should get create" do
    get user_registration_create_url
    assert_response :success
  end

  test "should get login" do
    get user_registration_login_url
    assert_response :success
  end

  test "should get logout" do
    get user_registration_logout_url
    assert_response :success
  end
end
