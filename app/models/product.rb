class Product < ApplicationRecord
    # attr_accessible :sku, :title, :price, :quantity
    validates :sku, :presence => true
    validates :title, :presence => true,
                        :length => {:minimum => 5}
  

                        
  mount_uploader :image, ImageUploader
end
