require "test_helper"

class InvoiceDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get invoice_details_index_url
    assert_response :success
  end
end
