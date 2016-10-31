require 'test_helper'

class Builder::Company::ContactPeopleControllerTest < ActionController::TestCase
  setup do
    @builder_company_contact_person = builder_company_contact_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:builder_company_contact_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create builder_company_contact_person" do
    assert_difference('Builder::Company::ContactPerson.count') do
      post :create, builder_company_contact_person: {  }
    end

    assert_redirected_to builder_company_contact_person_path(assigns(:builder_company_contact_person))
  end

  test "should show builder_company_contact_person" do
    get :show, id: @builder_company_contact_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @builder_company_contact_person
    assert_response :success
  end

  test "should update builder_company_contact_person" do
    patch :update, id: @builder_company_contact_person, builder_company_contact_person: {  }
    assert_redirected_to builder_company_contact_person_path(assigns(:builder_company_contact_person))
  end

  test "should destroy builder_company_contact_person" do
    assert_difference('Builder::Company::ContactPerson.count', -1) do
      delete :destroy, id: @builder_company_contact_person
    end

    assert_redirected_to builder_company_contact_people_path
  end
end
