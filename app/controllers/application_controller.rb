class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  # helper_method :get_comment


  def current_order
    @cart = session[:cart]
    @cart ||= {}
    session[:cart] = @cart
  end


end
