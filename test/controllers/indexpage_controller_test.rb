require 'test_helper'

class IndexpageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get indexpage_index_url
    assert_response :success
  end

end
