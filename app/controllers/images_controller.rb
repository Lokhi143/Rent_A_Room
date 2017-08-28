class ImagesController < ApplicationController
	def index
		@images = Image.all
	end
	def new
		@image = Image.new
	end
	def create
		@image = Image.new(image_params)
		@image.room_id = Room.find_by(current_user.id).id
		if @image.save
      redirect_to images_path, notice: "Sucessfully created" #"/categories"
    else
      render action: "new"
    end
	end	
	private
	def image_params
		params.require(:image).permit(:id, :image, :room_id)
	end
end
