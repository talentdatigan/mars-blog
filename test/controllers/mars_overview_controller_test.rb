require 'test_helper'

class MarsOverviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mars_overview_index_url
    assert_response :success
  end

end
