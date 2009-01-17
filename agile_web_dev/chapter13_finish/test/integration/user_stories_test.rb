require 'test_helper'

class UserStoriesTest < ActionController::IntegrationTest
  fixtures :products
  

  # Replace this with your real tests.
  def test_truth
    assert true
  end
  
  def test_buying_a_product
    LineItem.delete_all
    Order.delete_all
    ruby_book = products(:ruby_book)
    
    # Load the store, verify it loads
    get "/store/index"
    assert_response :success
    assert_template "index"
    
    # Add an item to the cart
    xml_http_request :put, "/store/add_to_cart", :id => ruby_book.id
    assert_response :success
    
    # Verify it was added
    cart = session[:cart]
    assert_equal 1, cart.items.size
    assert_equal ruby_book, cart.items[0].product
    
    # Checkout
    post "/store/checkout"
    assert_response :success
    assert_template "checkout"
    
    # Enter info and complete checkout
    post_via_redirect "/store/save_order",
                      :order => { :name     => "Dave Thomas",
                                  :address  =>  "123 The Street",
                                  :email    =>  "dave@pragprog.com",
                                  :pay_type =>  "check" }
    assert_response :success
    assert_template "index"
    assert_equal 0, session[:cart].items.size
    
    orders = Order.find(:all)
    assert_equal 1, orders.size
    order = orders[0]
    
    assert_equal "Dave Thomas",     order.name
    assert_equal "123 The Street",  order.address
    assert_equal "check",           order.pay_type
    
    assert_equal 1, order.line_items.size
    line_item = order.line_items[0]
    assert_equal ruby_book, line_item.product
  end
end
