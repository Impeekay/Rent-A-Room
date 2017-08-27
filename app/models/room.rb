class Room < ActiveRecord::Base

	validates_presence_of :name,:description,:price,:rules,:minimum_days,:address,:city

	belongs_to :city
	belongs_to :user
	has_many :images
	after_save :update_guest_to_host
	after_destroy :update_host_to_guest
	has_many :amenities
	has_many :bookings
	has_many :reviews
	private

	def update_guest_to_host
		user = self.user
		if user.user_role.name == "guest"
			user.user_role_id = 2
			user.save
		end
	end

	def update_host_to_guest
		user = self.user
		if user.user_role.name == "host" && user.rooms.count == 0
			user.user_role_id = 3
			user.save
		end
	end
end
