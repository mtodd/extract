require 'test_helper'

class ImportControllerTest < ActionController::TestCase
  
  def setup 
    @user = Factory.create(:user)
    sign_in @user
  end
  
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "should import data" do
    assert_difference('Activity.count', 21) do
      post :import, :csv => fixture_file_upload('/files/short_sample.csv.txt')
    end
    assert_redirected_to :root
  end
  
end