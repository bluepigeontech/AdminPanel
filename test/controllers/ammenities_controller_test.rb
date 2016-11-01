require 'test_helper'

class AmmenitiesControllerTest < ActionController::TestCase
  setup do
    @ammenity = ammenities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ammenities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ammenity" do
    assert_difference('Ammenity.count') do
      post :create, ammenity: {  }
    end

    assert_redirected_to ammenity_path(assigns(:ammenity))
  end

  test "should show ammenity" do
    get :show, id: @ammenity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ammenity
    assert_response :success
  end

  test "should update ammenity" do
    patch :update, id: @ammenity, ammenity: {  }
    assert_redirected_to ammenity_path(assigns(:ammenity))
  end

  test "should destroy ammenity" do
    assert_difference('Ammenity.count', -1) do
      delete :destroy, id: @ammenity
    end

    assert_redirected_to ammenities_path
  end
end
