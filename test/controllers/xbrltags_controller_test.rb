require 'test_helper'

class XbrltagsControllerTest < ActionController::TestCase
  setup do
    @xbrltag = xbrltags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xbrltags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xbrltag" do
    assert_difference('Xbrltag.count') do
      post :create, xbrltag: { tagmean: @xbrltag.tagmean, tagname: @xbrltag.tagname }
    end

    assert_redirected_to xbrltag_path(assigns(:xbrltag))
  end

  test "should show xbrltag" do
    get :show, id: @xbrltag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xbrltag
    assert_response :success
  end

  test "should update xbrltag" do
    patch :update, id: @xbrltag, xbrltag: { tagmean: @xbrltag.tagmean, tagname: @xbrltag.tagname }
    assert_redirected_to xbrltag_path(assigns(:xbrltag))
  end

  test "should destroy xbrltag" do
    assert_difference('Xbrltag.count', -1) do
      delete :destroy, id: @xbrltag
    end

    assert_redirected_to xbrltags_path
  end
end
