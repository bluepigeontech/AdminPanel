require 'test_helper'

class Floor::PhotosControllerTest < ActionController::TestCase
  setup do
    @floor_photo = floor_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floor_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor_photo" do
    assert_difference('Floor::Photo.count') do
      post :create, floor_photo: {  }
    end

    assert_redirected_to floor_photo_path(assigns(:floor_photo))
  end

  test "should show floor_photo" do
    get :show, id: @floor_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor_photo
    assert_response :success
  end

  test "should update floor_photo" do
    patch :update, id: @floor_photo, floor_photo: {  }
    assert_redirected_to floor_photo_path(assigns(:floor_photo))
  end

  test "should destroy floor_photo" do
    assert_difference('Floor::Photo.count', -1) do
      delete :destroy, id: @floor_photo
    end

    assert_redirected_to floor_photos_path
  end
end
