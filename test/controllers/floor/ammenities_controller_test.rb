require 'test_helper'

class Floor::AmmenitiesControllerTest < ActionController::TestCase
  setup do
    @floor_ammenity = floor_ammenities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floor_ammenities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor_ammenity" do
    assert_difference('Floor::Ammenity.count') do
      post :create, floor_ammenity: {  }
    end

    assert_redirected_to floor_ammenity_path(assigns(:floor_ammenity))
  end

  test "should show floor_ammenity" do
    get :show, id: @floor_ammenity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor_ammenity
    assert_response :success
  end

  test "should update floor_ammenity" do
    patch :update, id: @floor_ammenity, floor_ammenity: {  }
    assert_redirected_to floor_ammenity_path(assigns(:floor_ammenity))
  end

  test "should destroy floor_ammenity" do
    assert_difference('Floor::Ammenity.count', -1) do
      delete :destroy, id: @floor_ammenity
    end

    assert_redirected_to floor_ammenities_path
  end
end
