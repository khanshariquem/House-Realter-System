require 'test_helper'

class BuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyer = buyers(:one)
  end

  test "should get index" do
    get buyers_url
    assert_response :found
  end

  test "should get new" do
    get new_buyer_url
    assert_response :found
  end

  test "should show buyer" do
    get buyer_url(@buyer)
    assert_response :found
  end

  test "should get edit" do
    get edit_buyer_url(@buyer)
    assert_response :found
  end




end
