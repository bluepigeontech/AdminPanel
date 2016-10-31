require 'test_helper'

class Building::Stage::SubStagesControllerTest < ActionController::TestCase
  setup do
    @building_stage_sub_stage = building_stage_sub_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_stage_sub_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_stage_sub_stage" do
    assert_difference('Building::Stage::SubStage.count') do
      post :create, building_stage_sub_stage: {  }
    end

    assert_redirected_to building_stage_sub_stage_path(assigns(:building_stage_sub_stage))
  end

  test "should show building_stage_sub_stage" do
    get :show, id: @building_stage_sub_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_stage_sub_stage
    assert_response :success
  end

  test "should update building_stage_sub_stage" do
    patch :update, id: @building_stage_sub_stage, building_stage_sub_stage: {  }
    assert_redirected_to building_stage_sub_stage_path(assigns(:building_stage_sub_stage))
  end

  test "should destroy building_stage_sub_stage" do
    assert_difference('Building::Stage::SubStage.count', -1) do
      delete :destroy, id: @building_stage_sub_stage
    end

    assert_redirected_to building_stage_sub_stages_path
  end
end
