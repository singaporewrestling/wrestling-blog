require 'test_helper'

class AccessTokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_token = access_tokens(:one)
  end

  test "should get index" do
    get access_tokens_url, as: :json
    assert_response :success
  end

  test "should create access_token" do
    assert_difference('AccessToken.count') do
      post access_tokens_url, params: { access_token: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show access_token" do
    get access_token_url(@access_token), as: :json
    assert_response :success
  end

  test "should update access_token" do
    patch access_token_url(@access_token), params: { access_token: {  } }, as: :json
    assert_response 200
  end

  test "should destroy access_token" do
    assert_difference('AccessToken.count', -1) do
      delete access_token_url(@access_token), as: :json
    end

    assert_response 204
  end
end
