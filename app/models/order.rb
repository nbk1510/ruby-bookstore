class Order < ApplicationRecord
    has_many :order_items
    before_save :set_default_status
  
    # def get_subtotal
    #   order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
    # end
    # def update_subtotal
    #   self[:subtotal] = get_subtotal
    # end
  private
    def set_default_status
      if self[:status].nil?
        self[:status] = "PENDING"
      end
    end


end
