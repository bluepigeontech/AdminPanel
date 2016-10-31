require 'test_helper'

class Flat::PhotosControllerTest < ActionController::TestCase
  setup do
    @flat_photo = flat_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flat_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat_photo" do
    assert_difference('Flat::Photo.count') do
      post :create, flat_photo: {  }
    end

    assert_redirected_to flat_photo_path(assigns(:flat_photo))
  end

  test "should show flat_photo" do
    get :show, id: @flat_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat_photo
    assert_response :success
  end

  test "should update flat_photo" do
    patch :update, id: @flat_photo, flat_photo: {  }
    assert_redirected_to flat_photo_path(assigns(:flat_photo))
  end

  test "should destroy flat_photo" do
    assert_difference('Flat::Photo.count', -1) do
      delete :destroy, id: @flat_photo
    end

    assert_redirected_to flat_photos_path
  end
end
