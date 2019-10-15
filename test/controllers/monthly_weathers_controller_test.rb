require 'test_helper'

class MonthlyWeathersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monthly_weather = monthly_weathers(:one)
  end

  test "should get index" do
    get monthly_weathers_url
    assert_response :success
  end

  test "should get new" do
    get new_monthly_weather_url
    assert_response :success
  end

  test "should create monthly_weather" do
    assert_difference('MonthlyWeather.count') do
      post monthly_weathers_url, params: { monthly_weather: { maxTemp: @monthly_weather.maxTemp, minTemp: @monthly_weather.minTemp, month: @monthly_weather.month } }
    end

    assert_redirected_to monthly_weather_url(MonthlyWeather.last)
  end

  test "should show monthly_weather" do
    get monthly_weather_url(@monthly_weather)
    assert_response :success
  end

  test "should get edit" do
    get edit_monthly_weather_url(@monthly_weather)
    assert_response :success
  end

  test "should update monthly_weather" do
    patch monthly_weather_url(@monthly_weather), params: { monthly_weather: { maxTemp: @monthly_weather.maxTemp, minTemp: @monthly_weather.minTemp, month: @monthly_weather.month } }
    assert_redirected_to monthly_weather_url(@monthly_weather)
  end

  test "should destroy monthly_weather" do
    assert_difference('MonthlyWeather.count', -1) do
      delete monthly_weather_url(@monthly_weather)
    end

    assert_redirected_to monthly_weathers_url
  end
end
