require 'test_helper'

class Building::AmmenitiesControllerTest < ActionController::TestCase
  setup do
    @building_ammenity = building_ammenities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_ammenities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_ammenity" do
    assert_difference('Building::Ammenity.count') do
      post :create, building_ammenity: {  }
    end

    assert_redirected_to building_ammenity_path(assigns(:building_ammenity))
  end

  test "should show building_ammenity" do
    get :show, id: @building_ammenity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_ammenity
    assert_response :success
  end

  test "should update building_ammenity" do
    patch :update, id: @building_ammenity, building_ammenity: {  }
    assert_redirected_to building_ammenity_path(assigns(:building_ammenity))
  end

  test "should destroy building_ammenity" do
    assert_difference('Building::Ammenity.count', -1) do
      delete :destroy, id: @building_ammenity
    end

    assert_redirected_to building_ammenities_path
  end
end
