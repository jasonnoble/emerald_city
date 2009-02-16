require File.dirname(__FILE__) + '/../test_helper' 
require 'user_controller' 

# Re-raise errors caught by the controller. 
class UserController; def rescue_action(e) raise e end; end 
class UserControllerTest < Test::Unit::TestCase 
  def setup 
    @controller = UserController.new 
    @request = ActionController::TestRequest.new 
    @response = ActionController::TestResponse.new 
  end 
  # Make sure the registration page responds with the proper form. 
  def test_registration_page 
    get :register 
    title = assigns(:title) 
    assert_equal "Register", title 
    assert_response :success 
    assert_template "register" 
    # Test the form and all its tags. 
    assert_tag "form", 
      :attributes => {  :action       => "/user/register", 
                        :method       => "post" } 
    assert_tag "input", 
      :attributes => {  :name         => "user[screen_name]", 
                        :type         => "text", 
                        :size         => User::SCREEN_NAME_SIZE, 
                        :maxlength    => User::SCREEN_NAME_MAX_LENGTH } 
    assert_tag "input", 
      :attributes => {  :name         => "user[email]", 
                        :type         => "text", 
                        :size         => User::EMAIL_SIZE, 
                        :maxlength    => User::EMAIL_MAX_LENGTH } 
    assert_tag "input", 
      :attributes => {  :name         => "user[password]", 
                        :type         => "password", 
                        :size         => User::PASSWORD_SIZE, 
                        :maxlength    => User::PASSWORD_MAX_LENGTH } 
    assert_tag "input", 
      :attributes => {  :type         => "submit", 
                        :value        => "Register!" } 
  end
  # Test a valid registration. 
  def test_registration_success 
    post :register, 
      :user => {        :screen_name  => "new_screen_name", 
                        :email        => "valid@example.com", 
                        :password     => "long_enough_password" } 
      # Test assignment of user. 
      user = assigns(:user) 
      assert_not_nil user 
      # Test new user in database. 
      new_user = User.find_by_screen_name_and_password( user.screen_name, 
                                                        user.password) 
      assert_equal new_user, user 
      # Test flash and redirect. 
      assert_equal "User #{new_user.screen_name} created!", flash[:notice] 
      assert_redirected_to :action => "index" 
  end 
  # Test an invalid registration 
  def test_registration_failure 
    post :register, 
      :user => {        :screen_name  => "aa/noyes", 
                        :email        => "anoyes@example,com", 
                        :password     => "sun" } 
    assert_response     :success 
    assert_template "register" 
    
    # Test display of error messages. 
    assert_tag "div", 
      :attributes => {  :id => "errorExplanation", 
                        :class => "errorExplanation" } 
                        
    # Assert that each form field has at least one error displayed. 
    assert_tag "li",    :content    => /Screen name/ 
    assert_tag "li",    :content    => /Email/ 
    assert_tag "li",    :content    => /Password/ 
    
    # Test to see that the input fields are being wrapped with the correct div. 
    error_div = { :tag => "div", :attributes => { :class => "fieldWithErrors" } } 
    assert_tag "input", 
      :attributes => {  :name       => "user[screen_name]", 
                        :value      => "aa/noyes" }, 
                        :parent     => error_div 
    assert_tag "input", 
      :attributes => {  :name       => "user[email]", 
                        :value      => "anoyes@example,com" }, 
                        :parent     => error_div 
    assert_tag "input", 
      :attributes => {  :name       => "user[password]", 
                        :value      => "sun" }, 
                        :parent     => error_div 
  end 
  
end 

