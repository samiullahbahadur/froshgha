require "test_helper"

class CurrentPricesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get current_prices_index_url
    assert_response :success
  end
end
