class NotificationForUser < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_for_user.user_confirmation.subject
  #
  def user_confirmation(booking)
    @booking = booking

    mail to: "#{booking.user.email}", subject: "Booking is confirmed for #{booking.id}"
  end
end
