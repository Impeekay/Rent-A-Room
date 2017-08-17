class Image < ActiveRecord::Base
	mount_uploader :cover, CoverUploader
	belongs_to :room
end
