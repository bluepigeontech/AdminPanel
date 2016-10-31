require 'test_helper'

class Flat::AmmenitiesControllerTest < ActionController::TestCase
  setup do
    @flat_ammenity = flat_ammenities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flat_ammenities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat_ammenity" do
    assert_difference('Flat::Ammenity.count') do
      post :create, flat_ammenity: {  }
    end

    assert_redirected_to flat_ammenity_path(assigns(:flat_ammenity))
  end

  test "should show flat_ammenity" do
    get :show, id: @flat_ammenity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat_ammenity
    assert_response :success
  end

  test "should update flat_ammenity" do
    patch :update, id: @flat_ammenity, flat_ammenity: {  }
    assert_redirected_to flat_ammenity_path(assigns(:flat_ammenity))
  end

  test "should destroy flat_ammenity" do
    assert_difference('Flat::Ammenity.count', -1) do
      delete :destroy, id: @flat_ammenity
    end

    assert_redirected_to flat_ammenities_path
  end
end
