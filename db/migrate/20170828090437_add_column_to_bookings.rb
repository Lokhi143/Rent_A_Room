class AddColumnToBookings < ActiveRecord::Migration
  def change
  	add_column :bookings, :amount, :integer
  end
end
