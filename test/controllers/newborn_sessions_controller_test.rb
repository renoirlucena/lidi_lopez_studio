require "test_helper"

class NewbornSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newborn_session = newborn_sessions(:one)
  end

  test "should get index" do
    get newborn_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_newborn_session_url
    assert_response :success
  end

  test "should create newborn_session" do
    assert_difference("NewbornSession.count") do
      post newborn_sessions_url, params: { newborn_session: { description: @newborn_session.description, name: @newborn_session.name, price: @newborn_session.price } }
    end

    assert_redirected_to newborn_session_url(NewbornSession.last)
  end

  test "should show newborn_session" do
    get newborn_session_url(@newborn_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_newborn_session_url(@newborn_session)
    assert_response :success
  end

  test "should update newborn_session" do
    patch newborn_session_url(@newborn_session), params: { newborn_session: { description: @newborn_session.description, name: @newborn_session.name, price: @newborn_session.price } }
    assert_redirected_to newborn_session_url(@newborn_session)
  end

  test "should destroy newborn_session" do
    assert_difference("NewbornSession.count", -1) do
      delete newborn_session_url(@newborn_session)
    end

    assert_redirected_to newborn_sessions_url
  end
end
