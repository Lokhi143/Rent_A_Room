class Room < ActiveRecord::Base
	belongs_to :city
	belongs_to :user
	has_many :amenities
end
