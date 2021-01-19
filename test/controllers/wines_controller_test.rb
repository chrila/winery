require "test_helper"

class WinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wines_index_url
    assert_response :success
  end

  test "should get new" do
    get wines_new_url
    assert_response :success
  end
end
