require "test_helper"

class ContactSubmissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contact_submissions_new_url
    assert_response :success
  end

  test "should get create" do
    get contact_submissions_create_url
    assert_response :success
  end
end
