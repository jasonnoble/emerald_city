require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_truth
    assert true
  end
  
  def test_require_name
    user = User.new
    assert !user.valid?
    user.name = "Bob"
    puts user.errors
    assert !user.valid?, print_all_errors(user)
    
    # This shouldn't work!
    user.password = "Password"
    assert !user.valid?, print_all_errors(user)
  end
  
  def test_require_password_confirmation
    params = Hash.new
    params[:user] = {:name => 'Bob', :password => 'password', :password_confirmation => 'blah'}
    user = User.create(params[:user])
    assert !user.valid?, "Password confirmations should return an error when they don't match"
    params[:user][:password_confirmation] = ''
    user = User.create(params[:user])
    assert !user.valid?, "Blank password confirmation should return an error"
    
  end
  
  def print_all_errors(user)
    "Errors on user: \n\t" + user.errors.full_messages.join("\n\t")
  end
end
