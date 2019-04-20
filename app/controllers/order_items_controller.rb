class OrderItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    puts "add to cart, finding product with id "
    item = order_item_params
    # debugger
    if session[:cart][item['product_id']]
      session[:cart][item['product_id']]['quantity'] = session[:cart][item['product_id']]['quantity'].to_i +
          item['quantity'].to_i
    else
      session[:cart][item['product_id']] = item
    end

  end

  def update
    puts "UPDATE cart id quantity "

    if session[:cart][params[:id]]
      session[:cart][params[:id]]['quantity'] = params[:quantity]
    end
    redirect_to "/cart"
  end

  def destroy
    puts "remove item from cart"
    if session[:cart][params[:id]]
      session[:cart].delete(params[:id])
    end
    redirect_to "/cart"
  end

private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end


end
