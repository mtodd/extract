require 'test_helper'

class ApplicationControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_select "a", "Sign in"
    assert_response :success
  end
  
  test "logged in user should get index" do
    sign_in Factory.create(:user)
    get :index
    assert_response :success
    assert_select "a", "Sign out"
  end
  
end