class Room < ActiveRecord::Base
	#mount_uploader :image, ImageUploader



	belongs_to :city
	belongs_to :user
	has_many :amenities
	has_many :images
	has_many :amenity_rooms
	has_many :amenities, through: :amenity_rooms

	accepts_nested_attributes_for :images

	after_create :send_email
	after_create :guest_to_host
	after_update :room_authorization_confirmation


	def guest_to_host 
		# use find_by bcz what if our first user is guest we dont knw the id
		role = Role.find_by_name("guest")
		host = Role.find_by_name("host")
		if (self.user.role_id == role.id)
			self.user.role_id = host.id
			self.user.save
		end
 	end

	def send_email
		Notification.isauthorized_confirmation(self).deliver!
	end

	def room_authorization_confirmation
		NotificationHost.authorized_confirmation(self).deliver!
	end
	
end
