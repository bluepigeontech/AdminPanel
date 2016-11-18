require 'test_helper'

class BaseOffersControllerTest < ActionController::TestCase
  setup do
    @base_offer = base_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_offer" do
    assert_difference('BaseOffer.count') do
      post :create, base_offer: {  }
    end

    assert_redirected_to base_offer_path(assigns(:base_offer))
  end

  test "should show base_offer" do
    get :show, id: @base_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_offer
    assert_response :success
  end

  test "should update base_offer" do
    patch :update, id: @base_offer, base_offer: {  }
    assert_redirected_to base_offer_path(assigns(:base_offer))
  end

  test "should destroy base_offer" do
    assert_difference('BaseOffer.count', -1) do
      delete :destroy, id: @base_offer
    end

    assert_redirected_to base_offers_path
  end
end
