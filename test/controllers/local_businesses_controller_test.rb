require 'test_helper'

class LocalBusinessesControllerTest < ActionController::TestCase
  setup do
    @local_business = local_businesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_businesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_business" do
    assert_difference('LocalBusiness.count') do
      post :create, local_business: {  }
    end

    assert_redirected_to local_business_path(assigns(:local_business))
  end

  test "should show local_business" do
    get :show, id: @local_business
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_business
    assert_response :success
  end

  test "should update local_business" do
    patch :update, id: @local_business, local_business: {  }
    assert_redirected_to local_business_path(assigns(:local_business))
  end

  test "should destroy local_business" do
    assert_difference('LocalBusiness.count', -1) do
      delete :destroy, id: @local_business
    end

    assert_redirected_to local_businesses_path
  end
end
