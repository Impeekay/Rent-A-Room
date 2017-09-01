class Image < ApplicationRecord
	mount_uploader :cover, CoverUploader
	belongs_to :room
end
