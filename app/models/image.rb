class Image < ActiveRecord::Base
	belongs_to :room
	mount_uploader :image, ImageUploader
end
