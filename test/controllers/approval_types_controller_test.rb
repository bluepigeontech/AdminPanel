require 'test_helper'

class ApprovalTypesControllerTest < ActionController::TestCase
  setup do
    @approval_type = approval_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:approval_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create approval_type" do
    assert_difference('ApprovalType.count') do
      post :create, approval_type: {  }
    end

    assert_redirected_to approval_type_path(assigns(:approval_type))
  end

  test "should show approval_type" do
    get :show, id: @approval_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @approval_type
    assert_response :success
  end

  test "should update approval_type" do
    patch :update, id: @approval_type, approval_type: {  }
    assert_redirected_to approval_type_path(assigns(:approval_type))
  end

  test "should destroy approval_type" do
    assert_difference('ApprovalType.count', -1) do
      delete :destroy, id: @approval_type
    end

    assert_redirected_to approval_types_path
  end
end
