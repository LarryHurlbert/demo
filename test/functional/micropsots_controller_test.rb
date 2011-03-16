require 'test_helper'

class MicropsotsControllerTest < ActionController::TestCase
  setup do
    @micropsot = micropsots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropsots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropsot" do
    assert_difference('Micropsot.count') do
      post :create, :micropsot => @micropsot.attributes
    end

    assert_redirected_to micropsot_path(assigns(:micropsot))
  end

  test "should show micropsot" do
    get :show, :id => @micropsot.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @micropsot.to_param
    assert_response :success
  end

  test "should update micropsot" do
    put :update, :id => @micropsot.to_param, :micropsot => @micropsot.attributes
    assert_redirected_to micropsot_path(assigns(:micropsot))
  end

  test "should destroy micropsot" do
    assert_difference('Micropsot.count', -1) do
      delete :destroy, :id => @micropsot.to_param
    end

    assert_redirected_to micropsots_path
  end
end
