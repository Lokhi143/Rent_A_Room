class InsertColumnToBookings < ActiveRecord::Migration
  def change
  	add_column :bookings, :is_confirmed, :boolean
  end
end
