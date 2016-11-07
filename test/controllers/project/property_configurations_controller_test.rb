require 'test_helper'

class Project::PropertyConfigurationsControllerTest < ActionController::TestCase
  setup do
    @project_property_configuration = project_property_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_property_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_property_configuration" do
    assert_difference('Project::PropertyConfiguration.count') do
      post :create, project_property_configuration: {  }
    end

    assert_redirected_to project_property_configuration_path(assigns(:project_property_configuration))
  end

  test "should show project_property_configuration" do
    get :show, id: @project_property_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_property_configuration
    assert_response :success
  end

  test "should update project_property_configuration" do
    patch :update, id: @project_property_configuration, project_property_configuration: {  }
    assert_redirected_to project_property_configuration_path(assigns(:project_property_configuration))
  end

  test "should destroy project_property_configuration" do
    assert_difference('Project::PropertyConfiguration.count', -1) do
      delete :destroy, id: @project_property_configuration
    end

    assert_redirected_to project_property_configurations_path
  end
end
