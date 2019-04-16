class CartsController < ApplicationController
  def show
    @order_items = current_order
    @order_item = OrderItem.new
    @products = Product.all
  end

  def update
    current_order.update
  end

end
