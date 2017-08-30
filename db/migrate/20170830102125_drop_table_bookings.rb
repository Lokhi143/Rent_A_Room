class DropTableBookings < ActiveRecord::Migration
  def change
  	drop_table :bookings
  end
end
