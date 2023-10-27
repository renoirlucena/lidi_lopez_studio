require "test_helper"

class FamilySessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_session = family_sessions(:one)
  end

  test "should get index" do
    get family_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_family_session_url
    assert_response :success
  end

  test "should create family_session" do
    assert_difference("FamilySession.count") do
      post family_sessions_url, params: { family_session: { description: @family_session.description, name: @family_session.name, price: @family_session.price } }
    end

    assert_redirected_to family_session_url(FamilySession.last)
  end

  test "should show family_session" do
    get family_session_url(@family_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_session_url(@family_session)
    assert_response :success
  end

  test "should update family_session" do
    patch family_session_url(@family_session), params: { family_session: { description: @family_session.description, name: @family_session.name, price: @family_session.price } }
    assert_redirected_to family_session_url(@family_session)
  end

  test "should destroy family_session" do
    assert_difference("FamilySession.count", -1) do
      delete family_session_url(@family_session)
    end

    assert_redirected_to family_sessions_url
  end
end
