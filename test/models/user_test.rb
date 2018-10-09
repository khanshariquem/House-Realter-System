require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user should have email and fname" do
    user = User.new
    assert_not user.save
  end

  test "user with email and fname should be saved" do
    user = User.new
    user.email = "x@x.com"
    user.fname="some name"
    assert user.save
  end
end
