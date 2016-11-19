require 'test_helper'

class Buyer::ReferralLeadsControllerTest < ActionController::TestCase
  setup do
    @buyer_referral_lead = buyer_referral_leads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buyer_referral_leads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buyer_referral_lead" do
    assert_difference('Buyer::ReferralLead.count') do
      post :create, buyer_referral_lead: {  }
    end

    assert_redirected_to buyer_referral_lead_path(assigns(:buyer_referral_lead))
  end

  test "should show buyer_referral_lead" do
    get :show, id: @buyer_referral_lead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buyer_referral_lead
    assert_response :success
  end

  test "should update buyer_referral_lead" do
    patch :update, id: @buyer_referral_lead, buyer_referral_lead: {  }
    assert_redirected_to buyer_referral_lead_path(assigns(:buyer_referral_lead))
  end

  test "should destroy buyer_referral_lead" do
    assert_difference('Buyer::ReferralLead.count', -1) do
      delete :destroy, id: @buyer_referral_lead
    end

    assert_redirected_to buyer_referral_leads_path
  end
end
