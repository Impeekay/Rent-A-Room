class AmenitiesController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@amenity = Amenity.new
	end

	def create
		@room = Room.find(params[:room_id])
		@amenity = Amenity.new(amenity_params)
		if @amenity.save
			redirect_to room_path(@room) ,notice: 'saved amenity'
		end
	end

	private

	def amenity_params
		params[:amenity].permit(:name,:description,:room_id)
	end
end

