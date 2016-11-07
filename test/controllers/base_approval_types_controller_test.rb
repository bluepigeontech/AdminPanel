require 'test_helper'

class BaseApprovalTypesControllerTest < ActionController::TestCase
  setup do
    @base_approval_type = base_approval_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_approval_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_approval_type" do
    assert_difference('BaseApprovalType.count') do
      post :create, base_approval_type: {  }
    end

    assert_redirected_to base_approval_type_path(assigns(:base_approval_type))
  end

  test "should show base_approval_type" do
    get :show, id: @base_approval_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_approval_type
    assert_response :success
  end

  test "should update base_approval_type" do
    patch :update, id: @base_approval_type, base_approval_type: {  }
    assert_redirected_to base_approval_type_path(assigns(:base_approval_type))
  end

  test "should destroy base_approval_type" do
    assert_difference('BaseApprovalType.count', -1) do
      delete :destroy, id: @base_approval_type
    end

    assert_redirected_to base_approval_types_path
  end
end
