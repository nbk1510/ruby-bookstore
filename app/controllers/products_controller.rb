class ProductsController < ApplicationController
  
  def index
    @cart = session[:cart]
    @cart ||= Array.new
    
    @categories = Category.all
    @products = Product.all
    @order_item = OrderItem.new
  end

  def show
    @category = Category.all
    @product = Product.find(params[:id])
  end

  
end
