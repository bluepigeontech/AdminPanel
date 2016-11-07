require 'test_helper'

class Floor::StatusesControllerTest < ActionController::TestCase
  setup do
    @floor_status = floor_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floor_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor_status" do
    assert_difference('Floor::Status.count') do
      post :create, floor_status: {  }
    end

    assert_redirected_to floor_status_path(assigns(:floor_status))
  end

  test "should show floor_status" do
    get :show, id: @floor_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor_status
    assert_response :success
  end

  test "should update floor_status" do
    patch :update, id: @floor_status, floor_status: {  }
    assert_redirected_to floor_status_path(assigns(:floor_status))
  end

  test "should destroy floor_status" do
    assert_difference('Floor::Status.count', -1) do
      delete :destroy, id: @floor_status
    end

    assert_redirected_to floor_statuses_path
  end
end
