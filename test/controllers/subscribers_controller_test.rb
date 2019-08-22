require 'test_helper'

class SubscribersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscriber = subscribers(:one)
  end

  test "should get index" do
    get subscribers_url, as: :json
    assert_response :success
  end

  test "should create subscriber" do
    assert_difference('Subscriber.count') do
      post subscribers_url, params: { subscriber: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show subscriber" do
    get subscriber_url(@subscriber), as: :json
    assert_response :success
  end

  test "should update subscriber" do
    patch subscriber_url(@subscriber), params: { subscriber: {  } }, as: :json
    assert_response 200
  end

  test "should destroy subscriber" do
    assert_difference('Subscriber.count', -1) do
      delete subscriber_url(@subscriber), as: :json
    end

    assert_response 204
  end
end
