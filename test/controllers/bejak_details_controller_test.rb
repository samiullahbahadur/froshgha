require "test_helper"

class BejakDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bejak_details_index_url
    assert_response :success
  end
end
