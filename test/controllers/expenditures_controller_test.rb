require "test_helper"

class ExpendituresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expenditures_index_url
    assert_response :success
  end
end
