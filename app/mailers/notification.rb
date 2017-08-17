class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.isauthorized_confirmation.subject
  #
  def isauthorized_confirmation
      mail to: "lakshmisravani597@gmail.com", subject: "Room is added(authorize it)"
  end
end
