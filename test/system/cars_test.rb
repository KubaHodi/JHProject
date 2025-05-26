require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "should create car" do
    visit cars_url
    click_on "New car"

    fill_in "Cubic capacity", with: @car.cubic_capacity
    fill_in "Fuel type", with: @car.fuel_type
    fill_in "Mileage", with: @car.mileage
    fill_in "Name", with: @car.name
    fill_in "Power", with: @car.power
    fill_in "Production date", with: @car.production_date
    fill_in "Transmission", with: @car.transmission
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "should update Car" do
    visit car_url(@car)
    click_on "Edit this car", match: :first

    fill_in "Cubic capacity", with: @car.cubic_capacity
    fill_in "Fuel type", with: @car.fuel_type
    fill_in "Mileage", with: @car.mileage
    fill_in "Name", with: @car.name
    fill_in "Power", with: @car.power
    fill_in "Production date", with: @car.production_date
    fill_in "Transmission", with: @car.transmission
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "should destroy Car" do
    visit car_url(@car)
    accept_confirm { click_on "Destroy this car", match: :first }

    assert_text "Car was successfully destroyed"
  end
end
