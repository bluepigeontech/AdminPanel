require 'test_helper'

class Project::ProjectTypesControllerTest < ActionController::TestCase
  setup do
    @project_project_type = project_project_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_project_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_project_type" do
    assert_difference('Project::ProjectType.count') do
      post :create, project_project_type: {  }
    end

    assert_redirected_to project_project_type_path(assigns(:project_project_type))
  end

  test "should show project_project_type" do
    get :show, id: @project_project_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_project_type
    assert_response :success
  end

  test "should update project_project_type" do
    patch :update, id: @project_project_type, project_project_type: {  }
    assert_redirected_to project_project_type_path(assigns(:project_project_type))
  end

  test "should destroy project_project_type" do
    assert_difference('Project::ProjectType.count', -1) do
      delete :destroy, id: @project_project_type
    end

    assert_redirected_to project_project_types_path
  end
end
