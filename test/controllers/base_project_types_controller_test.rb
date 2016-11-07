require 'test_helper'

class BaseProjectTypesControllerTest < ActionController::TestCase
  setup do
    @base_project_type = base_project_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_project_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_project_type" do
    assert_difference('BaseProjectType.count') do
      post :create, base_project_type: {  }
    end

    assert_redirected_to base_project_type_path(assigns(:base_project_type))
  end

  test "should show base_project_type" do
    get :show, id: @base_project_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_project_type
    assert_response :success
  end

  test "should update base_project_type" do
    patch :update, id: @base_project_type, base_project_type: {  }
    assert_redirected_to base_project_type_path(assigns(:base_project_type))
  end

  test "should destroy base_project_type" do
    assert_difference('BaseProjectType.count', -1) do
      delete :destroy, id: @base_project_type
    end

    assert_redirected_to base_project_types_path
  end
end
