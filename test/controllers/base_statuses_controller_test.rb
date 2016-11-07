require 'test_helper'

class BaseStatusesControllerTest < ActionController::TestCase
  setup do
    @base_status = base_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_status" do
    assert_difference('BaseStatus.count') do
      post :create, base_status: {  }
    end

    assert_redirected_to base_status_path(assigns(:base_status))
  end

  test "should show base_status" do
    get :show, id: @base_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_status
    assert_response :success
  end

  test "should update base_status" do
    patch :update, id: @base_status, base_status: {  }
    assert_redirected_to base_status_path(assigns(:base_status))
  end

  test "should destroy base_status" do
    assert_difference('BaseStatus.count', -1) do
      delete :destroy, id: @base_status
    end

    assert_redirected_to base_statuses_path
  end
end
