require 'test_helper'

class BuslistsControllerTest < ActionController::TestCase
  setup do
    @buslist = buslists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buslists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buslist" do
    assert_difference('Buslist.count') do
      post :create, buslist: { busNo: @buslist.busNo, ending: @buslist.ending, price: @buslist.price, starting: @buslist.starting, time: @buslist.time }
    end

    assert_redirected_to buslist_path(assigns(:buslist))
  end

  test "should show buslist" do
    get :show, id: @buslist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buslist
    assert_response :success
  end

  test "should update buslist" do
    patch :update, id: @buslist, buslist: { busNo: @buslist.busNo, ending: @buslist.ending, price: @buslist.price, starting: @buslist.starting, time: @buslist.time }
    assert_redirected_to buslist_path(assigns(:buslist))
  end

  test "should destroy buslist" do
    assert_difference('Buslist.count', -1) do
      delete :destroy, id: @buslist
    end

    assert_redirected_to buslists_path
  end
end
