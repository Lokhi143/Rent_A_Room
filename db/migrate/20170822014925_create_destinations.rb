class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
