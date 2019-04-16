class OrderController < ApplicationController
  def create
    puts "CReate order"
    newo = Order.create!
    newo.total = 0
    newo.subtotal = 0
    newo.name = params[:name]
    newo.address = params[:address]
    session[:cart].each do |product_id, item|
      uprice = Product.find(product_id).price
      tprice = uprice * item['quantity'].to_i
      ii = OrderItem.new(order: newo, 'product_id': product_id, 'quantity': item['quantity'],
                         'unit_price': uprice, 'total_price': tprice)
      newo.total += 1
      newo[:subtotal] += tprice
      ii.save
    end
    if newo.save!
      session.delete(:cart)
    end

  end
end
