require 'test_helper'

class ExchangeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get exchange_show_url
    assert_response :success
  end

end
