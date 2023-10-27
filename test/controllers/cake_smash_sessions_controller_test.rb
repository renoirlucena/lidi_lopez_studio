require "test_helper"

class CakeSmashSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cake_smash_session = cake_smash_sessions(:one)
  end

  test "should get index" do
    get cake_smash_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_cake_smash_session_url
    assert_response :success
  end

  test "should create cake_smash_session" do
    assert_difference("CakeSmashSession.count") do
      post cake_smash_sessions_url, params: { cake_smash_session: { description: @cake_smash_session.description, name: @cake_smash_session.name, price: @cake_smash_session.price } }
    end

    assert_redirected_to cake_smash_session_url(CakeSmashSession.last)
  end

  test "should show cake_smash_session" do
    get cake_smash_session_url(@cake_smash_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_cake_smash_session_url(@cake_smash_session)
    assert_response :success
  end

  test "should update cake_smash_session" do
    patch cake_smash_session_url(@cake_smash_session), params: { cake_smash_session: { description: @cake_smash_session.description, name: @cake_smash_session.name, price: @cake_smash_session.price } }
    assert_redirected_to cake_smash_session_url(@cake_smash_session)
  end

  test "should destroy cake_smash_session" do
    assert_difference("CakeSmashSession.count", -1) do
      delete cake_smash_session_url(@cake_smash_session)
    end

    assert_redirected_to cake_smash_sessions_url
  end
end
