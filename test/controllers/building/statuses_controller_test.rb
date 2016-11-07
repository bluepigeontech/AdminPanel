require 'test_helper'

class Building::StatusesControllerTest < ActionController::TestCase
  setup do
    @building_status = building_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_status" do
    assert_difference('Building::Status.count') do
      post :create, building_status: {  }
    end

    assert_redirected_to building_status_path(assigns(:building_status))
  end

  test "should show building_status" do
    get :show, id: @building_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_status
    assert_response :success
  end

  test "should update building_status" do
    patch :update, id: @building_status, building_status: {  }
    assert_redirected_to building_status_path(assigns(:building_status))
  end

  test "should destroy building_status" do
    assert_difference('Building::Status.count', -1) do
      delete :destroy, id: @building_status
    end

    assert_redirected_to building_statuses_path
  end
end
