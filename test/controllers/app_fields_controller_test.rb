require 'test_helper'

class AppFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_field = app_fields(:one)
  end

  test "should get index" do
    get app_fields_url, as: :json
    assert_response :success
  end

  test "should create app_field" do
    assert_difference('AppField.count') do
      post app_fields_url, params: { app_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show app_field" do
    get app_field_url(@app_field), as: :json
    assert_response :success
  end

  test "should update app_field" do
    patch app_field_url(@app_field), params: { app_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy app_field" do
    assert_difference('AppField.count', -1) do
      delete app_field_url(@app_field), as: :json
    end

    assert_response 204
  end
end
