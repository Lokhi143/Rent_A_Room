class RemoveColumnForBookings < ActiveRecord::Migration
  def change
  	remove_column :bookings, :is_confirmed
  end
end
