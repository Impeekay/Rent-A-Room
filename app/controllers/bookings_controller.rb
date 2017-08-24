class BookingsController < ApplicationController

	def new
		@booking = Booking.new
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.user_id = current_user.id
		@booking.save
	end

	private

	def booking_params
		params[:booking].permit(:start_date,:end_date,:room_id)
	end
end
