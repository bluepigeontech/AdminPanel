require 'test_helper'

class Builder::CompaniesControllerTest < ActionController::TestCase
  setup do
    @builder_company = builder_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:builder_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create builder_company" do
    assert_difference('Builder::Company.count') do
      post :create, builder_company: {  }
    end

    assert_redirected_to builder_company_path(assigns(:builder_company))
  end

  test "should show builder_company" do
    get :show, id: @builder_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @builder_company
    assert_response :success
  end

  test "should update builder_company" do
    patch :update, id: @builder_company, builder_company: {  }
    assert_redirected_to builder_company_path(assigns(:builder_company))
  end

  test "should destroy builder_company" do
    assert_difference('Builder::Company.count', -1) do
      delete :destroy, id: @builder_company
    end

    assert_redirected_to builder_companies_path
  end
end
