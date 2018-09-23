require "application_system_test_case"

class HousesTest < ApplicationSystemTestCase
  setup do
    @house = houses(:one)
  end

  test "visiting the index" do
    visit houses_url
    assert_selector "h1", text: "Houses"
  end

  test "creating a House" do
    visit houses_url
    click_on "New House"

    fill_in "Basement", with: @house.basement
    fill_in "Company", with: @house.company_id
    fill_in "Contact", with: @house.contact
    fill_in "Floors", with: @house.floors
    fill_in "Location", with: @house.location
    fill_in "Owner", with: @house.owner
    fill_in "Price", with: @house.price
    fill_in "Size", with: @house.size
    fill_in "Style", with: @house.style
    fill_in "Year", with: @house.year
    click_on "Create House"

    assert_text "House was successfully created"
    click_on "Back"
  end

  test "updating a House" do
    visit houses_url
    click_on "Edit", match: :first

    fill_in "Basement", with: @house.basement
    fill_in "Company", with: @house.company_id
    fill_in "Contact", with: @house.contact
    fill_in "Floors", with: @house.floors
    fill_in "Location", with: @house.location
    fill_in "Owner", with: @house.owner
    fill_in "Price", with: @house.price
    fill_in "Size", with: @house.size
    fill_in "Style", with: @house.style
    fill_in "Year", with: @house.year
    click_on "Update House"

    assert_text "House was successfully updated"
    click_on "Back"
  end

  test "destroying a House" do
    visit houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House was successfully destroyed"
  end
end
