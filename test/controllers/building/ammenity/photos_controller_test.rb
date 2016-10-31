require 'test_helper'

class Building::Ammenity::PhotosControllerTest < ActionController::TestCase
  setup do
    @building_ammenity_photo = building_ammenity_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_ammenity_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_ammenity_photo" do
    assert_difference('Building::Ammenity::Photo.count') do
      post :create, building_ammenity_photo: {  }
    end

    assert_redirected_to building_ammenity_photo_path(assigns(:building_ammenity_photo))
  end

  test "should show building_ammenity_photo" do
    get :show, id: @building_ammenity_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_ammenity_photo
    assert_response :success
  end

  test "should update building_ammenity_photo" do
    patch :update, id: @building_ammenity_photo, building_ammenity_photo: {  }
    assert_redirected_to building_ammenity_photo_path(assigns(:building_ammenity_photo))
  end

  test "should destroy building_ammenity_photo" do
    assert_difference('Building::Ammenity::Photo.count', -1) do
      delete :destroy, id: @building_ammenity_photo
    end

    assert_redirected_to building_ammenity_photos_path
  end
end
