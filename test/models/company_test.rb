require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  test "company should have name, website and address" do
    company = Company.new
    assert_not company.save
  end

  test "company with name, website and address should be saved" do
    company = Company.new
    company.c_name=nil
    company.website=nil
    company.address=nil
    assert_not company.save
  end
end
