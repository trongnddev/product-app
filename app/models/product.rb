class Product < ApplicationRecord
    # attr_accessible :sku, :title, :price, :quantity
    validates :sku, :presence => true
    validates :title, :presence => true,
                        :length => {:minimum => 5}
    has_many :properties, dependent: :destroy

    belongs_to :category
                        
  mount_uploader :image, ImageUploader

  def self.search(key_word)
    product = Product.joins(:category).where('categories.name LIKE ?', "%#{key_word}%")
  end


end


