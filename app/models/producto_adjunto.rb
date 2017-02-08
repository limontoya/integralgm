class ProductoAdjunto < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	belongs_to :producto
end
