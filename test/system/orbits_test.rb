require "application_system_test_case"

class OrbitsTest < ApplicationSystemTestCase
  setup do
    @orbit = orbits(:one)
  end

  test "visiting the index" do
    visit orbits_url
    assert_selector "h1", text: "Orbits"
  end

  test "creating a Orbit" do
    visit orbits_url
    click_on "New Orbit"

    fill_in "Engine", with: @orbit.engine_id
    fill_in "Form", with: @orbit.form
    fill_in "Height", with: @orbit.height
    fill_in "Name", with: @orbit.name
    click_on "Create Orbit"

    assert_text "Orbit was successfully created"
    click_on "Back"
  end

  test "updating a Orbit" do
    visit orbits_url
    click_on "Edit", match: :first

    fill_in "Engine", with: @orbit.engine_id
    fill_in "Form", with: @orbit.form
    fill_in "Height", with: @orbit.height
    fill_in "Name", with: @orbit.name
    click_on "Update Orbit"

    assert_text "Orbit was successfully updated"
    click_on "Back"
  end

  test "destroying a Orbit" do
    visit orbits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orbit was successfully destroyed"
  end
end
