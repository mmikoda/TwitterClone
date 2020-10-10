require 'test_helper'

class MicottersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get micotters_index_url
    assert_response :success
  end

end
