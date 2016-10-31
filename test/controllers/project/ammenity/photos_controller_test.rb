require 'test_helper'

class Project::Ammenity::PhotosControllerTest < ActionController::TestCase
  setup do
    @project_ammenity_photo = project_ammenity_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_ammenity_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_ammenity_photo" do
    assert_difference('Project::Ammenity::Photo.count') do
      post :create, project_ammenity_photo: {  }
    end

    assert_redirected_to project_ammenity_photo_path(assigns(:project_ammenity_photo))
  end

  test "should show project_ammenity_photo" do
    get :show, id: @project_ammenity_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_ammenity_photo
    assert_response :success
  end

  test "should update project_ammenity_photo" do
    patch :update, id: @project_ammenity_photo, project_ammenity_photo: {  }
    assert_redirected_to project_ammenity_photo_path(assigns(:project_ammenity_photo))
  end

  test "should destroy project_ammenity_photo" do
    assert_difference('Project::Ammenity::Photo.count', -1) do
      delete :destroy, id: @project_ammenity_photo
    end

    assert_redirected_to project_ammenity_photos_path
  end
end
