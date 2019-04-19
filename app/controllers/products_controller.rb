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
    @order_item = OrderItem.new
    @comments = Comment.all
    @comment = Comment.new
    # debugger
  end

  def rate
    product = Product.find(params[:id])
    product.rate(params[:rating])
    debugger
    product.save
  end
end
