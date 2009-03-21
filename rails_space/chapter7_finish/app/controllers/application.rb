# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include ApplicationHelper
  
  before_filter :check_authorization
  
  helper :all # include all helpers, all the time

  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_rails_space_session_id'
  
  # Check for a valid authorization cookie, possibly logging the user in.
  def check_authorization
    authorization_token = cookies[:authorization_token]
    if authorization_token and not session[:user_id]
      user = User.find_by_authorization_token(authorization_token)
      user.login! if user
    end
  end
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery :secret => 'e2ab3705b5a57a973872d468d9b45aac'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
end
