require 'test_helper'

class CommentMailerTest < ActionMailer::TestCase
  test "receive_when_comment" do
    mail = CommentMailer.receive_when_comment
    assert_equal "Receive when comment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
