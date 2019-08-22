require 'test_helper'

class RefreshTokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refresh_token = refresh_tokens(:one)
  end

  test "should get index" do
    get refresh_tokens_url, as: :json
    assert_response :success
  end

  test "should create refresh_token" do
    assert_difference('RefreshToken.count') do
      post refresh_tokens_url, params: { refresh_token: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show refresh_token" do
    get refresh_token_url(@refresh_token), as: :json
    assert_response :success
  end

  test "should update refresh_token" do
    patch refresh_token_url(@refresh_token), params: { refresh_token: {  } }, as: :json
    assert_response 200
  end

  test "should destroy refresh_token" do
    assert_difference('RefreshToken.count', -1) do
      delete refresh_token_url(@refresh_token), as: :json
    end

    assert_response 204
  end
end
