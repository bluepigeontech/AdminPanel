require 'test_helper'

class Project::StagesControllerTest < ActionController::TestCase
  setup do
    @project_stage = project_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_stage" do
    assert_difference('Project::Stage.count') do
      post :create, project_stage: {  }
    end

    assert_redirected_to project_stage_path(assigns(:project_stage))
  end

  test "should show project_stage" do
    get :show, id: @project_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_stage
    assert_response :success
  end

  test "should update project_stage" do
    patch :update, id: @project_stage, project_stage: {  }
    assert_redirected_to project_stage_path(assigns(:project_stage))
  end

  test "should destroy project_stage" do
    assert_difference('Project::Stage.count', -1) do
      delete :destroy, id: @project_stage
    end

    assert_redirected_to project_stages_path
  end
end
