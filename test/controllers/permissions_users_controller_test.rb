require 'test_helper'

class PermissionsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permissions_user = permissions_users(:one)
  end

  test "should get index" do
    get permissions_users_url, as: :json
    assert_response :success
  end

  test "should create permissions_user" do
    assert_difference('PermissionsUser.count') do
      post permissions_users_url, params: { permissions_user: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show permissions_user" do
    get permissions_user_url(@permissions_user), as: :json
    assert_response :success
  end

  test "should update permissions_user" do
    patch permissions_user_url(@permissions_user), params: { permissions_user: {  } }, as: :json
    assert_response 200
  end

  test "should destroy permissions_user" do
    assert_difference('PermissionsUser.count', -1) do
      delete permissions_user_url(@permissions_user), as: :json
    end

    assert_response 204
  end
end
