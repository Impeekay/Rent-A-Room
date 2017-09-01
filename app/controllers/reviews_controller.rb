class ReviewsController < ApplicationController


	def index
		@reviews = Review.where('room_id = ?',params[:room_id])
	end
	
end
