# Preview all emails at http://localhost:3000/rails/mailers/notification_host
class NotificationHostPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_host/authorized_confirmation
  def authorized_confirmation
    NotificationHost.authorized_confirmation
  end

end
