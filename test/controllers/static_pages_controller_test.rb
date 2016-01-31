require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get gift1" do
    get :gift1
    assert_response :success
  end

  test "should get gift1" do
    get :gift1
    assert_response :success
  end

  test "should get gift3" do
    get :gift3
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
