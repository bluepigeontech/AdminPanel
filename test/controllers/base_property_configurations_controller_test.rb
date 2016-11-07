require 'test_helper'

class BasePropertyConfigurationsControllerTest < ActionController::TestCase
  setup do
    @base_property_configuration = base_property_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_property_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_property_configuration" do
    assert_difference('BasePropertyConfiguration.count') do
      post :create, base_property_configuration: {  }
    end

    assert_redirected_to base_property_configuration_path(assigns(:base_property_configuration))
  end

  test "should show base_property_configuration" do
    get :show, id: @base_property_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_property_configuration
    assert_response :success
  end

  test "should update base_property_configuration" do
    patch :update, id: @base_property_configuration, base_property_configuration: {  }
    assert_redirected_to base_property_configuration_path(assigns(:base_property_configuration))
  end

  test "should destroy base_property_configuration" do
    assert_difference('BasePropertyConfiguration.count', -1) do
      delete :destroy, id: @base_property_configuration
    end

    assert_redirected_to base_property_configurations_path
  end
end
