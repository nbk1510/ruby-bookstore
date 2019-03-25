class Product < ApplicationRecord
    has_many :taggings
    has_many :categories, through: :taggings
    has_many :order_items

end
