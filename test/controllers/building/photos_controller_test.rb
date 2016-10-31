require 'test_helper'

class Building::PhotosControllerTest < ActionController::TestCase
  setup do
    @building_photo = building_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_photo" do
    assert_difference('Building::Photo.count') do
      post :create, building_photo: {  }
    end

    assert_redirected_to building_photo_path(assigns(:building_photo))
  end

  test "should show building_photo" do
    get :show, id: @building_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_photo
    assert_response :success
  end

  test "should update building_photo" do
    patch :update, id: @building_photo, building_photo: {  }
    assert_redirected_to building_photo_path(assigns(:building_photo))
  end

  test "should destroy building_photo" do
    assert_difference('Building::Photo.count', -1) do
      delete :destroy, id: @building_photo
    end

    assert_redirected_to building_photos_path
  end
end
