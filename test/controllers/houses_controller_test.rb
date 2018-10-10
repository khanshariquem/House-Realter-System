require 'test_helper'

class HousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get houses_url
    assert_response :found
  end

  test "should get new" do
    get new_house_url
    assert_response :found
  end


  test "should show house" do
    get house_url(@house)
    assert_response :found
  end

  test "should get edit" do
    get edit_house_url(@house)
    assert_response :found
  end



  test "should destroy house" do
    assert_difference('House.count', -1) do
      @house.destroy
      delete house_url(@house)
    end

  end
end
