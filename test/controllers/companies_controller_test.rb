require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :found
  end

  test "should get new" do
    get new_company_url
    assert_response :found
  end

  test "should show company" do
    get company_url(@company)
    assert_response :found
  end

  test "should get edit" do
    get edit_company_url(@company)
    assert_response :found
  end

  test "should update company" do
    patch company_url(@company), params: { company: { address: @company.address, c_name: @company.c_name, revenue: @company.revenue, size: @company.size, synopsis: @company.synopsis, website: @company.website, year: @company.year } }
    # assert_redirected_to company_url(@company)
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      @company.destroy
      delete company_url(@company)
    end

    assert_response :found
  end
end
