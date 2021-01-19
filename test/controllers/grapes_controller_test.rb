require "test_helper"

class GrapesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grapes_index_url
    assert_response :success
  end

  test "should get new" do
    get grapes_new_url
    assert_response :success
  end
end
