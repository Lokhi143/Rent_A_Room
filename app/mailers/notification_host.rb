class NotificationHost < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_host.authorized_confirmation.subject
  #
  def authorized_confirmation

    mail to: "gudluck0722@gmail.com", subject: "Successfully room added"
  end
end
