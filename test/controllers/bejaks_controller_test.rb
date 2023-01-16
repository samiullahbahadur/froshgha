require "test_helper"

class BejaksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bejaks_index_url
    assert_response :success
  end
end
