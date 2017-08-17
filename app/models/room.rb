class Room < ActiveRecord::Base
	belongs_to :city
	belongs_to :user
	has_many :amenities

	after_create :send_email
	after_update :room_authorization_confirmation

	def send_email
		Notification.isauthorized_confirmation.deliver!
	end
	def room_authorization_confirmation
		:is_authorized => true
	end
end
