require 'test_helper'
require 'store_controller'

class OrderSpeedTest < ActionController::TestCase
  tests StoreController
  
  def setup
    @controller = StoreController.new
    @request    = ActionController::TestRequest.new
    @response    = ActionController::TestResponse.new
  end
end