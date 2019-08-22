require 'test_helper'

class AppSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_setting = app_settings(:one)
  end

  test "should get index" do
    get app_settings_url, as: :json
    assert_response :success
  end

  test "should create app_setting" do
    assert_difference('AppSetting.count') do
      post app_settings_url, params: { app_setting: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show app_setting" do
    get app_setting_url(@app_setting), as: :json
    assert_response :success
  end

  test "should update app_setting" do
    patch app_setting_url(@app_setting), params: { app_setting: {  } }, as: :json
    assert_response 200
  end

  test "should destroy app_setting" do
    assert_difference('AppSetting.count', -1) do
      delete app_setting_url(@app_setting), as: :json
    end

    assert_response 204
  end
end
