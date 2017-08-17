# Preview all emails at http://localhost:3000/rails/mailers/notification
class NotificationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification/isauthorized_confirmation
  def isauthorized_confirmation
    Notification.isauthorized_confirmation
  end

end
