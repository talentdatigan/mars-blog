require 'test_helper'

class MarsWeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get mars_weather_home_url
    assert_response :success
  end

end
