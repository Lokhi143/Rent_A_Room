class NotificationForBooking < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_for_booking.is_confirmed.subject
  #
  def is_confirmed(booking)
    @booking = booking
    user_email = @booking.room.user.email
    mail to: "#{user_email}", subject: "Your room is booked please confirm = #{booking.id}"
  end
end
