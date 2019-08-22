require 'test_helper'

class RolesUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roles_user = roles_users(:one)
  end

  test "should get index" do
    get roles_users_url, as: :json
    assert_response :success
  end

  test "should create roles_user" do
    assert_difference('RolesUser.count') do
      post roles_users_url, params: { roles_user: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show roles_user" do
    get roles_user_url(@roles_user), as: :json
    assert_response :success
  end

  test "should update roles_user" do
    patch roles_user_url(@roles_user), params: { roles_user: {  } }, as: :json
    assert_response 200
  end

  test "should destroy roles_user" do
    assert_difference('RolesUser.count', -1) do
      delete roles_user_url(@roles_user), as: :json
    end

    assert_response 204
  end
end
