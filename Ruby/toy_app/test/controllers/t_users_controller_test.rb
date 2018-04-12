require 'test_helper'

class TUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_user = t_users(:one)
  end

  test "should get index" do
    get t_users_url
    assert_response :success
  end

  test "should get new" do
    get new_t_user_url
    assert_response :success
  end

  test "should create t_user" do
    assert_difference('TUser.count') do
      post t_users_url, params: { t_user: { email: @t_user.email, name: @t_user.name } }
    end

    assert_redirected_to t_user_url(TUser.last)
  end

  test "should show t_user" do
    get t_user_url(@t_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_user_url(@t_user)
    assert_response :success
  end

  test "should update t_user" do
    patch t_user_url(@t_user), params: { t_user: { email: @t_user.email, name: @t_user.name } }
    assert_redirected_to t_user_url(@t_user)
  end

  test "should destroy t_user" do
    assert_difference('TUser.count', -1) do
      delete t_user_url(@t_user)
    end

    assert_redirected_to t_users_url
  end
end
