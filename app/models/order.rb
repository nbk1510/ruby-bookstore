class Order < ApplicationRecord
    has_many :order_items
    before_save :set_default_values

  private
    def set_default_values
      if self[:status].nil?
        self[:status] = "PENDING"
      end
    end

end
