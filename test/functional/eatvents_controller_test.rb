require 'test_helper'

class EatventsControllerTest < ActionController::TestCase
  setup do
    @eatvent = eatvents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eatvents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eatvent" do
    assert_difference('Eatvent.count') do
      post :create, eatvent: @eatvent.attributes
    end

    assert_redirected_to eatvent_path(assigns(:eatvent))
  end

  test "should show eatvent" do
    get :show, id: @eatvent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eatvent.to_param
    assert_response :success
  end

  test "should update eatvent" do
    put :update, id: @eatvent.to_param, eatvent: @eatvent.attributes
    assert_redirected_to eatvent_path(assigns(:eatvent))
  end

  test "should destroy eatvent" do
    assert_difference('Eatvent.count', -1) do
      delete :destroy, id: @eatvent.to_param
    end

    assert_redirected_to eatvents_path
  end
end
