require 'test_helper'

class BaseHomeLoanBanksControllerTest < ActionController::TestCase
  setup do
    @base_home_loan_bank = base_home_loan_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_home_loan_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_home_loan_bank" do
    assert_difference('BaseHomeLoanBank.count') do
      post :create, base_home_loan_bank: {  }
    end

    assert_redirected_to base_home_loan_bank_path(assigns(:base_home_loan_bank))
  end

  test "should show base_home_loan_bank" do
    get :show, id: @base_home_loan_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_home_loan_bank
    assert_response :success
  end

  test "should update base_home_loan_bank" do
    patch :update, id: @base_home_loan_bank, base_home_loan_bank: {  }
    assert_redirected_to base_home_loan_bank_path(assigns(:base_home_loan_bank))
  end

  test "should destroy base_home_loan_bank" do
    assert_difference('BaseHomeLoanBank.count', -1) do
      delete :destroy, id: @base_home_loan_bank
    end

    assert_redirected_to base_home_loan_banks_path
  end
end
