require 'test_helper'

class Project::OffersControllerTest < ActionController::TestCase
  setup do
    @project_offer = project_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_offer" do
    assert_difference('Project::Offer.count') do
      post :create, project_offer: {  }
    end

    assert_redirected_to project_offer_path(assigns(:project_offer))
  end

  test "should show project_offer" do
    get :show, id: @project_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_offer
    assert_response :success
  end

  test "should update project_offer" do
    patch :update, id: @project_offer, project_offer: {  }
    assert_redirected_to project_offer_path(assigns(:project_offer))
  end

  test "should destroy project_offer" do
    assert_difference('Project::Offer.count', -1) do
      delete :destroy, id: @project_offer
    end

    assert_redirected_to project_offers_path
  end
end
