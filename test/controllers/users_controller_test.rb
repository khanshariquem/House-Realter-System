require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :found
  end

  test "should get new" do
    get new_user_url
    assert_response :found
  end

  test "should show user" do
    get user_url(@user)
    assert_response :found
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :found
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email: @user.email, fname: @user.fname, encrypted_password: @user.encrypted_password, is_admin: @user.is_admin } }
    assert_response :found
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      @user.destroy
      delete user_url(@user)
    end

    assert_response :found
  end
end
