require 'test_helper'

class HouseTest < ActiveSupport::TestCase

  test "house should have company_id, location and price" do
    house = House.new
    assert_not house.save
  end

  test "house with company_id, location and price should be saved" do
    house = House.new
    house.company_id = 'some'
    house.location="https://www.something.com"
    house.price='some'
    assert_not house.save
  end
 end
