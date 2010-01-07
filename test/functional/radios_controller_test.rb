require 'test_helper'

class RadiosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:radios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create radio" do
    assert_difference('Radio.count') do
      post :create, :radio => { }
    end

    assert_redirected_to radio_path(assigns(:radio))
  end

  test "should show radio" do
    get :show, :id => radios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => radios(:one).to_param
    assert_response :success
  end

  test "should update radio" do
    put :update, :id => radios(:one).to_param, :radio => { }
    assert_redirected_to radio_path(assigns(:radio))
  end

  test "should destroy radio" do
    assert_difference('Radio.count', -1) do
      delete :destroy, :id => radios(:one).to_param
    end

    assert_redirected_to radios_path
  end
end
