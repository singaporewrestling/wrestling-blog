require 'test_helper'

class PermissionsAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permissions_app = permissions_apps(:one)
  end

  test "should get index" do
    get permissions_apps_url, as: :json
    assert_response :success
  end

  test "should create permissions_app" do
    assert_difference('PermissionsApp.count') do
      post permissions_apps_url, params: { permissions_app: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show permissions_app" do
    get permissions_app_url(@permissions_app), as: :json
    assert_response :success
  end

  test "should update permissions_app" do
    patch permissions_app_url(@permissions_app), params: { permissions_app: {  } }, as: :json
    assert_response 200
  end

  test "should destroy permissions_app" do
    assert_difference('PermissionsApp.count', -1) do
      delete permissions_app_url(@permissions_app), as: :json
    end

    assert_response 204
  end
end
