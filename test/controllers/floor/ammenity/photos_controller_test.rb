require 'test_helper'

class Floor::Ammenity::PhotosControllerTest < ActionController::TestCase
  setup do
    @floor_ammenity_photo = floor_ammenity_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floor_ammenity_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor_ammenity_photo" do
    assert_difference('Floor::Ammenity::Photo.count') do
      post :create, floor_ammenity_photo: {  }
    end

    assert_redirected_to floor_ammenity_photo_path(assigns(:floor_ammenity_photo))
  end

  test "should show floor_ammenity_photo" do
    get :show, id: @floor_ammenity_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor_ammenity_photo
    assert_response :success
  end

  test "should update floor_ammenity_photo" do
    patch :update, id: @floor_ammenity_photo, floor_ammenity_photo: {  }
    assert_redirected_to floor_ammenity_photo_path(assigns(:floor_ammenity_photo))
  end

  test "should destroy floor_ammenity_photo" do
    assert_difference('Floor::Ammenity::Photo.count', -1) do
      delete :destroy, id: @floor_ammenity_photo
    end

    assert_redirected_to floor_ammenity_photos_path
  end
end
