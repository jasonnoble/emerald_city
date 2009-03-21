require 'test_helper'

class RememberMeTest < ActionController::IntegrationTest
  include ApplicationHelper
  fixtures :users

  def setup
    @user = users(:valid_user)
  end
  
  def test_remember_me
    # Log in with "remember me" enabled.
    post "user/login", :user => { :screen_name  => @user.screen_name,
                                  :password     => @user.password,
                                  :remember_me  => "1" }
    # Simulate "closing the browser" by clearing the user id from the session.
    @request.session[:user_id] = nil
    # Now access an arbitrary page
    get "site/index"
    # The check_authorization before_filter should have logged us in.
    assert logged_in?
    assert_equal @user.id, session[:user_id]
  end
end
