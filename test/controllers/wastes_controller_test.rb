require "test_helper"

class WastesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wastes_index_url
    assert_response :success
  end
end
