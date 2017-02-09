class Aboutu < ApplicationRecord
	mount_uploader :urlnosotros, AvatarUploader
	mount_uploader :urlmision,   AvatarUploader
	mount_uploader :urlvision,   AvatarUploader
end
