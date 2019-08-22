require 'test_helper'

class PostsTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posts_tag = posts_tags(:one)
  end

  test "should get index" do
    get posts_tags_url, as: :json
    assert_response :success
  end

  test "should create posts_tag" do
    assert_difference('PostsTag.count') do
      post posts_tags_url, params: { posts_tag: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show posts_tag" do
    get posts_tag_url(@posts_tag), as: :json
    assert_response :success
  end

  test "should update posts_tag" do
    patch posts_tag_url(@posts_tag), params: { posts_tag: {  } }, as: :json
    assert_response 200
  end

  test "should destroy posts_tag" do
    assert_difference('PostsTag.count', -1) do
      delete posts_tag_url(@posts_tag), as: :json
    end

    assert_response 204
  end
end
