require "test_helper"

class GamecontentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gamecontent = gamecontents(:one)
  end

  test "should get index" do
    get gamecontents_url
    assert_response :success
  end

  test "should get new" do
    get new_gamecontent_url
    assert_response :success
  end

  test "should create gamecontent" do
    assert_difference('Gamecontent.count') do
      post gamecontents_url, params: { gamecontent: { coin: @gamecontent.coin, die: @gamecontent.die, points: @gamecontent.points, user_id: @gamecontent.user_id } }
    end

    assert_redirected_to gamecontent_url(Gamecontent.last)
  end

  test "should show gamecontent" do
    get gamecontent_url(@gamecontent)
    assert_response :success
  end

  test "should get edit" do
    get edit_gamecontent_url(@gamecontent)
    assert_response :success
  end

  test "should update gamecontent" do
    patch gamecontent_url(@gamecontent), params: { gamecontent: { coin: @gamecontent.coin, die: @gamecontent.die, points: @gamecontent.points, user_id: @gamecontent.user_id } }
    assert_redirected_to gamecontent_url(@gamecontent)
  end

  test "should destroy gamecontent" do
    assert_difference('Gamecontent.count', -1) do
      delete gamecontent_url(@gamecontent)
    end

    assert_redirected_to gamecontents_url
  end
end
