require 'test_helper'

class HomeLoanBanksControllerTest < ActionController::TestCase
  setup do
    @home_loan_bank = home_loan_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_loan_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_loan_bank" do
    assert_difference('HomeLoanBank.count') do
      post :create, home_loan_bank: {  }
    end

    assert_redirected_to home_loan_bank_path(assigns(:home_loan_bank))
  end

  test "should show home_loan_bank" do
    get :show, id: @home_loan_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_loan_bank
    assert_response :success
  end

  test "should update home_loan_bank" do
    patch :update, id: @home_loan_bank, home_loan_bank: {  }
    assert_redirected_to home_loan_bank_path(assigns(:home_loan_bank))
  end

  test "should destroy home_loan_bank" do
    assert_difference('HomeLoanBank.count', -1) do
      delete :destroy, id: @home_loan_bank
    end

    assert_redirected_to home_loan_banks_path
  end
end
