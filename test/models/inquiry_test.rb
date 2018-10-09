require 'test_helper'

class InquiryTest < ActiveSupport::TestCase
  test "inquiry should have subject and content" do
    inquiry = Inquiry.new
    assert_not inquiry.save
  end

  test "inquiry with subject and content should be saved" do
    inquiry = Inquiry.new
    inquiry.subject = "some subject"
    inquiry.content="content"
    assert inquiry.save
  end
end
