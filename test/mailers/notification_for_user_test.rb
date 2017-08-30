require 'test_helper'

class NotificationForUserTest < ActionMailer::TestCase
  test "user_confirmation" do
    mail = NotificationForUser.user_confirmation
    assert_equal "User confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
