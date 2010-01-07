require 'test_helper'

class NabaztagsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nabaztags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nabaztag" do
    assert_difference('Nabaztag.count') do
      post :create, :nabaztag => { }
    end

    assert_redirected_to nabaztag_path(assigns(:nabaztag))
  end

  test "should show nabaztag" do
    get :show, :id => nabaztags(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => nabaztags(:one).to_param
    assert_response :success
  end

  test "should update nabaztag" do
    put :update, :id => nabaztags(:one).to_param, :nabaztag => { }
    assert_redirected_to nabaztag_path(assigns(:nabaztag))
  end

  test "should destroy nabaztag" do
    assert_difference('Nabaztag.count', -1) do
      delete :destroy, :id => nabaztags(:one).to_param
    end

    assert_redirected_to nabaztags_path
  end
end
