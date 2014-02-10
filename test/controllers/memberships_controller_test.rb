require 'test_helper'

class MembershipsControllerTest < ActionController::TestCase
  test "should get why" do
    get :why
    assert_response :success
  end

  test "should get benefit" do
    get :benefit
    assert_response :success
  end

  test "should get join" do
    get :join
    assert_response :success
  end

end
