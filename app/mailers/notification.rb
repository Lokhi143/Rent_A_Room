class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.isauthorized_confirmation.subject
  #
  def isauthorized_confirmation(room)
  	@room = room
  	role = Role.find_by(name: "admin")
  	@user = User.find_by(role_id: role).email
      mail to: "#{@user}", subject: "Room is added, authorize room = #{room.id}" 
  end
end
