class Product < ApplicationRecord
    has_many :taggings
    has_many :categories, through: :taggings
    has_many :order_items
    has_many :comments
    before_save :set_default

    def rate(rating)
        self[:total_rating] += rating
        self[:times_rated] +=1
        set_rating
    end

    private
    def set_rating
        self[:rating] = self[:total_rating] / self[:times_rated]
    end

    def set_default
        if self[:rating].nil? && self[:times_rated].nil? && self[:total_rating].nil?
            self[:rating] = 0
            self[:times_rated] = 0
            self[:total_rating] = 0
        else
            set_rating
        end
    end
end
