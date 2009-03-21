require 'digest/sha1'
class UserController < ApplicationController
  before_filter :protect, :only => :index
  def index
    @title = "RailsSpace User Hub"
  end
  def register
    @title = "Register"
    if param_posted?(:user)
      @user = User.new(params[:user]) 
      if @user.save
        @user.login!(session)
        flash[:notice] = "User #{@user.screen_name} created!"
        redirect_to_forwarding_url
      else
        @user.clear_password!
      end 
    end 
  end
  def login
    @title = "Log in to RailsSpace"
    if request.get?
      @user = User.new(:remember_me => remember_me_string)
    elsif param_posted?(:user)
      @user = User.new(params[:user])
      user = User.find_by_screen_name_and_password(@user.screen_name, @user.password)
      if user
        user.login!(session)
        @user.remember_me? ? user.remember!(cookies) : user.forget!(cookies)
        flash[:notice] = "User #{user.screen_name} logged in!"
        redirect_to_forwarding_url
      else
        # Don't show the password in the view
        @user.clear_password!
        flash[:notice] = "Invalid screen name/password combination"
      end
    end
  end
  def logout
    User.logout!(session, cookies)
    flash[:notice] = "Logged out"
    redirect_to :action => "index", :controller => "site"
  end
  private
  def protect
    unless logged_in?
      session[:protected_page] = request.request_uri
      flash[:notice] = "Please log in first"
      redirect_to :action => "login"
      return false
    end    
  end
  def param_posted?(symbol)
    request.post? and params[symbol]
  end
  def redirect_to_forwarding_url
    if(redirect_url = session[:protected_page])
      session[:protected_page] = nil
      redirect_to redirect_url
    else
      redirect_to :action => "index"
    end
  end
  def remember_me_string
    cookies[:remember_me] || "0"
  end
end
