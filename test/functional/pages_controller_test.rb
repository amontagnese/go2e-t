require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

  test "should get eatvents" do
    get :eatvents
    assert_response :success
  end

  test "should get neweatvent" do
    get :neweatvent
    assert_response :success
  end

end
