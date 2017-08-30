class Booking < ActiveRecord::Base
	belongs_to :user
	belongs_to :room
	validate :booking_room, on: :create
	after_create :inform_host


	def booking_room
		#binding.pry
		bookings = Booking.where('room_id = ?', self.room_id)
		new_start_date = self.start_date.to_datetime
		new_end_date = self.end_date.to_datetime
		future_dates = (new_start_date..new_end_date).to_a
		
		bookings.each do |booking|
			#binding.pry
			old_start_date = booking.start_date.to_datetime
			old_end_date = booking.end_date.to_datetime
			past_dates = (old_start_date..old_end_date).to_a
			
			if (self.end_date <= Date.today) || (past_dates - future_dates).length != past_dates.length
			
				self.errors.add(:room_id, "Not available")
				#binding.pry
			end 
		end
	end	

	def inform_host
		NotificationForBooking.is_confirmed(self).deliver!
	end	


end
