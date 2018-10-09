require 'test_helper'

class ReplyTest < ActiveSupport::TestCase
  test "reply should have response" do
    reply = Reply.new
    assert_not reply.save
  end

  test "reply with response should be saved" do
    reply = Reply.new
    reply.response = "some response"
    inquiry.content="content"
    assert reply.save
  end
end
