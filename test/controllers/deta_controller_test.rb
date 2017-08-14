require 'test_helper'

class DetaControllerTest < ActionController::TestCase
  test "should get deta_list" do
    get :deta_list
    assert_response :success
  end

end
