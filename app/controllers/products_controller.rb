class ProductsController < ApplicationController
  
  def index
    
    @categories = Category.all
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @category = Category.all
    @product = Product.find(params[:id])
  end
end
