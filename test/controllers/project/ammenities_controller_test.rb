require 'test_helper'

class Project::AmmenitiesControllerTest < ActionController::TestCase
  setup do
    @project_ammenity = project_ammenities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_ammenities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_ammenity" do
    assert_difference('Project::Ammenity.count') do
      post :create, project_ammenity: {  }
    end

    assert_redirected_to project_ammenity_path(assigns(:project_ammenity))
  end

  test "should show project_ammenity" do
    get :show, id: @project_ammenity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_ammenity
    assert_response :success
  end

  test "should update project_ammenity" do
    patch :update, id: @project_ammenity, project_ammenity: {  }
    assert_redirected_to project_ammenity_path(assigns(:project_ammenity))
  end

  test "should destroy project_ammenity" do
    assert_difference('Project::Ammenity.count', -1) do
      delete :destroy, id: @project_ammenity
    end

    assert_redirected_to project_ammenities_path
  end
end
