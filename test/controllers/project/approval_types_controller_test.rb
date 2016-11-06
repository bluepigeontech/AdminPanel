require 'test_helper'

class Project::ApprovalTypesControllerTest < ActionController::TestCase
  setup do
    @project_approval_type = project_approval_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_approval_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_approval_type" do
    assert_difference('Project::ApprovalType.count') do
      post :create, project_approval_type: {  }
    end

    assert_redirected_to project_approval_type_path(assigns(:project_approval_type))
  end

  test "should show project_approval_type" do
    get :show, id: @project_approval_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_approval_type
    assert_response :success
  end

  test "should update project_approval_type" do
    patch :update, id: @project_approval_type, project_approval_type: {  }
    assert_redirected_to project_approval_type_path(assigns(:project_approval_type))
  end

  test "should destroy project_approval_type" do
    assert_difference('Project::ApprovalType.count', -1) do
      delete :destroy, id: @project_approval_type
    end

    assert_redirected_to project_approval_types_path
  end
end
