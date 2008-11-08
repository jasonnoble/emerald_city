require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  fixtures :users
  
  # Replace this with your real tests.
  def test_truth
    assert true
  end
  
  def test_index
    get :index
    assert_redirected_to :controller => 'admin', :action => "login"
    assert_equal "Please log in", flash[:notice]
  end
  
  def test_index_with_user
    get :index, {}, { :user_id => users(:dave).id }
    assert_response :success
    assert_template "index"
  end
  
  def test_login
    dave = users(:dave)
    post :login, :name => dave.name, :password => 'secret'
    assert_redirected_to :action => "index"
    assert_equal dave.id, session[:user_id]
  end
  
  def test_bad_password
    dave = users(:dave)
    post :login, :name => dave.name, :password => 'wrong'
    assert_template "login"
    assert_equal flash[:notice], "Invalid user/password combination"
  end
  
  def test_logout
    get :index, {}, { :user_id => users(:dave).id}
    assert_response :success
    assert_template "index"
    assert session[:user_id]
    get :logout
    assert !session[:user_id]
    assert_equal flash[:notice], 'Logged out'
    assert_redirected_to :action => :login
    puts @
  end
end
