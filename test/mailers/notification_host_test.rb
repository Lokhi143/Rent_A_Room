require 'test_helper'

class NotificationHostTest < ActionMailer::TestCase
  test "authorized_confirmation" do
    mail = NotificationHost.authorized_confirmation
    assert_equal "Authorized confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
