class Recipe < ActiveRecord::Base

	validates :name, presence: true, length: {minimum: 2}

	mount_uploader :picture, PictureUploader


	def minutes_total
		if (minutes_to_prepare)
			minutes_to_prepare + minutes_to_cook
		else
			minutes_to_cook
		end
	end
end
