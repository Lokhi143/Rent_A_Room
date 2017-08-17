require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "isauthorized_confirmation" do
    mail = Notification.isauthorized_confirmation
    assert_equal "Isauthorized confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
