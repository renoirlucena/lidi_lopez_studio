require "test_helper"

class ChildSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child_session = child_sessions(:one)
  end

  test "should get index" do
    get child_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_child_session_url
    assert_response :success
  end

  test "should create child_session" do
    assert_difference("ChildSession.count") do
      post child_sessions_url, params: { child_session: { description: @child_session.description, name: @child_session.name, price: @child_session.price } }
    end

    assert_redirected_to child_session_url(ChildSession.last)
  end

  test "should show child_session" do
    get child_session_url(@child_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_child_session_url(@child_session)
    assert_response :success
  end

  test "should update child_session" do
    patch child_session_url(@child_session), params: { child_session: { description: @child_session.description, name: @child_session.name, price: @child_session.price } }
    assert_redirected_to child_session_url(@child_session)
  end

  test "should destroy child_session" do
    assert_difference("ChildSession.count", -1) do
      delete child_session_url(@child_session)
    end

    assert_redirected_to child_sessions_url
  end
end
