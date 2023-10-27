require "test_helper"

class BabySessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby_session = baby_sessions(:one)
  end

  test "should get index" do
    get baby_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_baby_session_url
    assert_response :success
  end

  test "should create baby_session" do
    assert_difference("BabySession.count") do
      post baby_sessions_url, params: { baby_session: { description: @baby_session.description, name: @baby_session.name, price: @baby_session.price } }
    end

    assert_redirected_to baby_session_url(BabySession.last)
  end

  test "should show baby_session" do
    get baby_session_url(@baby_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_baby_session_url(@baby_session)
    assert_response :success
  end

  test "should update baby_session" do
    patch baby_session_url(@baby_session), params: { baby_session: { description: @baby_session.description, name: @baby_session.name, price: @baby_session.price } }
    assert_redirected_to baby_session_url(@baby_session)
  end

  test "should destroy baby_session" do
    assert_difference("BabySession.count", -1) do
      delete baby_session_url(@baby_session)
    end

    assert_redirected_to baby_sessions_url
  end
end
