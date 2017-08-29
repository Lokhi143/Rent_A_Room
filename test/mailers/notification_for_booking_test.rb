require 'test_helper'

class NotificationForBookingTest < ActionMailer::TestCase
  test "is_confirmed" do
    mail = NotificationForBooking.is_confirmed
    assert_equal "Is confirmed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
