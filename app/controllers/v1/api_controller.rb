
module V1
  class ApiController < ApplicationController
    def products
      @products = Product.all      
      render json: { products: @categories }, status: 200
    end
  
    def categories
      @categories = Category.all      
      render json: { categories: @categories }, status: 200
    end
    # def show
    #   @category = Category.all
    #   @product = Product.find(params[:id])
    #   @order_item = OrderItem.new
    #   @comments = Comment.all
    #   @comment = Comment.new
    #   # debugger
    # end
    #
    # def rate
    #   product = Product.find(params[:id])
    #   product.rate(params[:rating])
    #   product.save
    # end
  end
end
