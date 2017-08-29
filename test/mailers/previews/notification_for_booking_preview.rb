# Preview all emails at http://localhost:3000/rails/mailers/notification_for_booking
class NotificationForBookingPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_for_booking/is_confirmed
  def is_confirmed
    NotificationForBooking.is_confirmed
  end

end
