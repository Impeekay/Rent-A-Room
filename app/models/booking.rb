class Booking < ApplicationRecord
	validates_presence_of :user_id,:room_id,:start_date,:end_date
	belongs_to :room
	belongs_to :user
end
