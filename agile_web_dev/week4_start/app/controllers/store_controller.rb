class StoreController < ApplicationController
  def index
=begin
    blah blah blah
    blah
=end
    #if session[:counter].nil?
    #  session[:counter] = 0
    #end
    session[:counter] = session[:counter].nil? ? 1 : session[:counter] + 1
    #session[:counter] ||= 0
    #session[:counter] += 1
    @products = Product.find_products_for_sale
  end
  
  def add_to_cart
    session[:counter] = 0
    begin
      product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid product #{params[:id]}")
      redirect_to_index("Invalid Product")
    else
      @cart = find_cart
      @cart.add_product(product)
      #redirect_to :action => :index
      #redirect_to_index("Product added")
      flash[:notice] = "I added your product"
    end
  end
  
  def empty_cart
    session[:cart] = nil
    redirect_to_index("Your cart is currently empty")
  end
  
  private
  def redirect_to_index(msg)
    flash[:notice] = msg
    redirect_to :action => :index
  end
  
  def find_cart
    unless session[:cart]
      # There is no cart, create one
      session[:cart] = Cart.new
    end
    # Return new or existing cart
    session[:cart]
  end
end
