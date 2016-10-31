require 'test_helper'

class Stage::SubStagesControllerTest < ActionController::TestCase
  setup do
    @stage_sub_stage = stage_sub_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stage_sub_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stage_sub_stage" do
    assert_difference('Stage::SubStage.count') do
      post :create, stage_sub_stage: {  }
    end

    assert_redirected_to stage_sub_stage_path(assigns(:stage_sub_stage))
  end

  test "should show stage_sub_stage" do
    get :show, id: @stage_sub_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stage_sub_stage
    assert_response :success
  end

  test "should update stage_sub_stage" do
    patch :update, id: @stage_sub_stage, stage_sub_stage: {  }
    assert_redirected_to stage_sub_stage_path(assigns(:stage_sub_stage))
  end

  test "should destroy stage_sub_stage" do
    assert_difference('Stage::SubStage.count', -1) do
      delete :destroy, id: @stage_sub_stage
    end

    assert_redirected_to stage_sub_stages_path
  end
end
