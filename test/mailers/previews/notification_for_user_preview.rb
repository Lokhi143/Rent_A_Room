# Preview all emails at http://localhost:3000/rails/mailers/notification_for_user
class NotificationForUserPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_for_user/user_confirmation
  def user_confirmation
    NotificationForUser.user_confirmation
  end

end
