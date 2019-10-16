require "application_system_test_case"

class MonthlyWeathersTest < ApplicationSystemTestCase
  setup do
    @monthly_weather = monthly_weathers(:one)
  end

  test "visiting the index" do
    visit monthly_weathers_url
    assert_selector "h1", text: "Monthly Weathers"
  end

  test "creating a Monthly weather" do
    visit monthly_weathers_url
    click_on "New Monthly Weather"

    fill_in "Maxtemp", with: @monthly_weather.maxTemp
    fill_in "Mintemp", with: @monthly_weather.minTemp
    fill_in "Month", with: @monthly_weather.month
    click_on "Create Monthly weather"

    assert_text "Monthly weather was successfully created"
    click_on "Back"
  end

  test "updating a Monthly weather" do
    visit monthly_weathers_url
    click_on "Edit", match: :first

    fill_in "Maxtemp", with: @monthly_weather.maxTemp
    fill_in "Mintemp", with: @monthly_weather.minTemp
    fill_in "Month", with: @monthly_weather.month
    click_on "Update Monthly weather"

    assert_text "Monthly weather was successfully updated"
    click_on "Back"
  end

  test "destroying a Monthly weather" do
    visit monthly_weathers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monthly weather was successfully destroyed"
  end
end
