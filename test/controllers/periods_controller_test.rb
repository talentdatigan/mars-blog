require 'test_helper'

class PeriodsControllerTest < ActionDispatch::IntegrationTest
  test "should get measure" do
    get periods_measure_url
    assert_response :success
  end

end
