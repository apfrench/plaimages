class Plaimage < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
