require 'test_helper'

class Flat::Ammenity::PHotosControllerTest < ActionController::TestCase
  setup do
    @flat_ammenity_p_hoto = flat_ammenity_p_hotos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flat_ammenity_p_hotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat_ammenity_p_hoto" do
    assert_difference('Flat::Ammenity::PHoto.count') do
      post :create, flat_ammenity_p_hoto: {  }
    end

    assert_redirected_to flat_ammenity_p_hoto_path(assigns(:flat_ammenity_p_hoto))
  end

  test "should show flat_ammenity_p_hoto" do
    get :show, id: @flat_ammenity_p_hoto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat_ammenity_p_hoto
    assert_response :success
  end

  test "should update flat_ammenity_p_hoto" do
    patch :update, id: @flat_ammenity_p_hoto, flat_ammenity_p_hoto: {  }
    assert_redirected_to flat_ammenity_p_hoto_path(assigns(:flat_ammenity_p_hoto))
  end

  test "should destroy flat_ammenity_p_hoto" do
    assert_difference('Flat::Ammenity::PHoto.count', -1) do
      delete :destroy, id: @flat_ammenity_p_hoto
    end

    assert_redirected_to flat_ammenity_p_hotos_path
  end
end
