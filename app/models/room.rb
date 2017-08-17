class Room < ActiveRecord::Base
	belongs_to :city
	belongs_to :user
	has_many :amenities

	after_create :send_email
	after_create :guest_to_host
	after_update :room_authorization_confirmation


	def guest_to_host
		role = self.user.role.name
		new_role = Role.second
		if(role == "guest")
			self.user.role_id = new_role.id
			self.user.save
		end
 	end

	def send_email
		Notification.isauthorized_confirmation.deliver!
	end

	def room_authorization_confirmation
		NotificationHost.authorized_confirmation.deliver!
	end
	
end
