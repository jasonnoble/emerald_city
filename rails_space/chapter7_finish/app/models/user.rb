class User < ActiveRecord::Base
  attr_accessor :remember_me
  
  SCREEN_NAME_MIN_LENGTH  = 4 
  SCREEN_NAME_MAX_LENGTH  = 20 
  PASSWORD_MIN_LENGTH     = 4 
  PASSWORD_MAX_LENGTH     = 40 
  EMAIL_MAX_LENGTH        = 50 
  SCREEN_NAME_RANGE       = SCREEN_NAME_MIN_LENGTH..SCREEN_NAME_MAX_LENGTH 
  PASSWORD_RANGE          = PASSWORD_MIN_LENGTH..PASSWORD_MAX_LENGTH 
  
  # Text box sizes for display in the views 
  SCREEN_NAME_SIZE        = 20 
  PASSWORD_SIZE           = 10 
  EMAIL_SIZE              = 30 
  
  validates_uniqueness_of :screen_name, :email 
  validates_length_of     :screen_name, :within   => SCREEN_NAME_RANGE 
  validates_length_of     :password,    :within   => PASSWORD_RANGE 
  validates_length_of     :email,       :maximum  => EMAIL_MAX_LENGTH 
  validates_format_of     :screen_name, 
                          :with => /^[A-Z0-9_]*$/i, 
                          :message => "must contain only letters, " + 
                                      "numbers, and underscores" 
  validates_format_of :email, 
                          :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i, 
                          :message => "must be a valid email address" 
  
  def validate 
    # Replaced by validates_format_of :email with RegEx above
    #errors.add(:email, "must be valid.") unless email.include?("@") 
    if screen_name.include?(" ") 
      errors.add(:screen_name, "cannot include spaces.") 
    end 
  end
  
  # Log a user in
  def login!(session)
    session[:user_id] = id
  end
  def self.logout!(session, cookies)
    session[:user_id] = nil
    cookies.delete(:authorization_token)
  end
  # Clear the password (typically used to suppress its display in a view)
  def clear_password!
    self.password = nil
  end
end
