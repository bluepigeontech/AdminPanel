require 'test_helper'

class Building::StagesControllerTest < ActionController::TestCase
  setup do
    @building_stage = building_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_stage" do
    assert_difference('Building::Stage.count') do
      post :create, building_stage: {  }
    end

    assert_redirected_to building_stage_path(assigns(:building_stage))
  end

  test "should show building_stage" do
    get :show, id: @building_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_stage
    assert_response :success
  end

  test "should update building_stage" do
    patch :update, id: @building_stage, building_stage: {  }
    assert_redirected_to building_stage_path(assigns(:building_stage))
  end

  test "should destroy building_stage" do
    assert_difference('Building::Stage.count', -1) do
      delete :destroy, id: @building_stage
    end

    assert_redirected_to building_stages_path
  end
end
