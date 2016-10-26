require 'test_helper'

class BetweensControllerTest < ActionController::TestCase
  setup do
    @between = betweens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:betweens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create between" do
    assert_difference('Between.count') do
      post :create, between: { datename: @between.datename, datetag: @between.datetag }
    end

    assert_redirected_to between_path(assigns(:between))
  end

  test "should show between" do
    get :show, id: @between
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @between
    assert_response :success
  end

  test "should update between" do
    patch :update, id: @between, between: { datename: @between.datename, datetag: @between.datetag }
    assert_redirected_to between_path(assigns(:between))
  end

  test "should destroy between" do
    assert_difference('Between.count', -1) do
      delete :destroy, id: @between
    end

    assert_redirected_to betweens_path
  end
end
