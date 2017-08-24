class Booking < ActiveRecord::Base
	validates_presence_of :user_id,:room_id,:start_date,:end_date
	belongs_to :room
end
