class Latest < ApplicationRecord
	mount_uploader :image, ImageUploader
	def self.search(search)
	  	if search
	     	self.where("title like ?", "%#{search}%")
  		else
    		self.all
	  	end
	end
end
