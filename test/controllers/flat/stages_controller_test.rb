require 'test_helper'

class Flat::StagesControllerTest < ActionController::TestCase
  setup do
    @flat_stage = flat_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flat_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat_stage" do
    assert_difference('Flat::Stage.count') do
      post :create, flat_stage: {  }
    end

    assert_redirected_to flat_stage_path(assigns(:flat_stage))
  end

  test "should show flat_stage" do
    get :show, id: @flat_stage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat_stage
    assert_response :success
  end

  test "should update flat_stage" do
    patch :update, id: @flat_stage, flat_stage: {  }
    assert_redirected_to flat_stage_path(assigns(:flat_stage))
  end

  test "should destroy flat_stage" do
    assert_difference('Flat::Stage.count', -1) do
      delete :destroy, id: @flat_stage
    end

    assert_redirected_to flat_stages_path
  end
end
