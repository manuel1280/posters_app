require 'test_helper'

class SeenPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get seen_posts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get seen_posts_destroy_url
    assert_response :success
  end

end
