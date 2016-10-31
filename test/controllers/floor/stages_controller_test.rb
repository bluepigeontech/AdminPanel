require 'test_helper'

class Floor::StagesControllerTest < ActionController::TestCase
  setup do
    @floor_stage = floor_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floor_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor_stage" do
    assert_difference('Floor::Stage.count') do
      post :create, floor_stage: {  }
    end

    assert_redirected_to floor_stage_path(assigns(:floor_stage))
  end

  test "should show floor_stage" do
    get :show, id: @floor_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor_stage
    assert_response :success
  end

  test "should update floor_stage" do
    patch :update, id: @floor_stage, floor_stage: {  }
    assert_redirected_to floor_stage_path(assigns(:floor_stage))
  end

  test "should destroy floor_stage" do
    assert_difference('Floor::Stage.count', -1) do
      delete :destroy, id: @floor_stage
    end

    assert_redirected_to floor_stages_path
  end
end
