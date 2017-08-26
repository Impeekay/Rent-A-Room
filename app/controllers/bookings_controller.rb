class BookingsController < ApplicationController

	def index
		@bookings = Booking.where(:room_id => params[:room_id],:is_confirmed => false)
	end

	def new
		@booking = Booking.new
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.user_id = current_user.id
		@booking.save
	end

	def update
		@booking = Booking.find(params[:id])
			if @booking.is_confirmed == false
				@booking.is_confirmed = true
				@booking.save
			end
		@bookings = Booking.where(:room_id => @booking.room_id, :is_confirmed => false)
	end

	private

	def booking_params
		params[:booking].permit(:start_date,:end_date,:room_id)
	end
end
