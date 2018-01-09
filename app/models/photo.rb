class Photo < ApplicationRecord
	belongs_to :performance
	belongs_to :apparel
	mount_uploader :image, ImageUploader
end
