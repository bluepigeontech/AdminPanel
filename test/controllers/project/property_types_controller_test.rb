require 'test_helper'

class Project::PropertyTypesControllerTest < ActionController::TestCase
  setup do
    @project_property_type = project_property_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_property_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_property_type" do
    assert_difference('Project::PropertyType.count') do
      post :create, project_property_type: {  }
    end

    assert_redirected_to project_property_type_path(assigns(:project_property_type))
  end

  test "should show project_property_type" do
    get :show, id: @project_property_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_property_type
    assert_response :success
  end

  test "should update project_property_type" do
    patch :update, id: @project_property_type, project_property_type: {  }
    assert_redirected_to project_property_type_path(assigns(:project_property_type))
  end

  test "should destroy project_property_type" do
    assert_difference('Project::PropertyType.count', -1) do
      delete :destroy, id: @project_property_type
    end

    assert_redirected_to project_property_types_path
  end
end
