require 'test_helper'

class Project::HomeLoanBanksControllerTest < ActionController::TestCase
  setup do
    @project_home_loan_bank = project_home_loan_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_home_loan_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_home_loan_bank" do
    assert_difference('Project::HomeLoanBank.count') do
      post :create, project_home_loan_bank: {  }
    end

    assert_redirected_to project_home_loan_bank_path(assigns(:project_home_loan_bank))
  end

  test "should show project_home_loan_bank" do
    get :show, id: @project_home_loan_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_home_loan_bank
    assert_response :success
  end

  test "should update project_home_loan_bank" do
    patch :update, id: @project_home_loan_bank, project_home_loan_bank: {  }
    assert_redirected_to project_home_loan_bank_path(assigns(:project_home_loan_bank))
  end

  test "should destroy project_home_loan_bank" do
    assert_difference('Project::HomeLoanBank.count', -1) do
      delete :destroy, id: @project_home_loan_bank
    end

    assert_redirected_to project_home_loan_banks_path
  end
end
