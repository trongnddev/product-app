class Property < ApplicationRecord
    belong_to :product
    mount_uploader :image, ImageUploader
end
