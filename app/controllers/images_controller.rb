class ImagesController < ApplicationController

	def create
		@image = Image.new(image_params)
		@image.save
	end


	private

	def image_params
		params[:image].permit(:photo,:room_id)
	end
end
