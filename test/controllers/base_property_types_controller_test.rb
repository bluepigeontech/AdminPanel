require 'test_helper'

class BasePropertyTypesControllerTest < ActionController::TestCase
  setup do
    @base_property_type = base_property_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_property_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_property_type" do
    assert_difference('BasePropertyType.count') do
      post :create, base_property_type: {  }
    end

    assert_redirected_to base_property_type_path(assigns(:base_property_type))
  end

  test "should show base_property_type" do
    get :show, id: @base_property_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_property_type
    assert_response :success
  end

  test "should update base_property_type" do
    patch :update, id: @base_property_type, base_property_type: {  }
    assert_redirected_to base_property_type_path(assigns(:base_property_type))
  end

  test "should destroy base_property_type" do
    assert_difference('BasePropertyType.count', -1) do
      delete :destroy, id: @base_property_type
    end

    assert_redirected_to base_property_types_path
  end
end
