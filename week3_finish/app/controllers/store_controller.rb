class StoreController < ApplicationController
  def index
    @products = Product.find_products_for_sale
  end
  
  private
  def find_cart
    unless session[:cart]
      # There is no cart, create one
      session[:cart] = Cart.new
    end
    # Return new or existing cart
    session[:cart]
  end
end
