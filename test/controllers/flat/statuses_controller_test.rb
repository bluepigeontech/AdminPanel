require 'test_helper'

class Flat::StatusesControllerTest < ActionController::TestCase
  setup do
    @flat_status = flat_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flat_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat_status" do
    assert_difference('Flat::Status.count') do
      post :create, flat_status: {  }
    end

    assert_redirected_to flat_status_path(assigns(:flat_status))
  end

  test "should show flat_status" do
    get :show, id: @flat_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat_status
    assert_response :success
  end

  test "should update flat_status" do
    patch :update, id: @flat_status, flat_status: {  }
    assert_redirected_to flat_status_path(assigns(:flat_status))
  end

  test "should destroy flat_status" do
    assert_difference('Flat::Status.count', -1) do
      delete :destroy, id: @flat_status
    end

    assert_redirected_to flat_statuses_path
  end
end
