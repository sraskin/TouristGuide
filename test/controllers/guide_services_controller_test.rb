require 'test_helper'

class GuideServicesControllerTest < ActionController::TestCase
  setup do
    @guide_service = guide_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guide_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guide_service" do
    assert_difference('GuideService.count') do
      post :create, guide_service: {  }
    end

    assert_redirected_to guide_service_path(assigns(:guide_service))
  end

  test "should show guide_service" do
    get :show, id: @guide_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guide_service
    assert_response :success
  end

  test "should update guide_service" do
    patch :update, id: @guide_service, guide_service: {  }
    assert_redirected_to guide_service_path(assigns(:guide_service))
  end

  test "should destroy guide_service" do
    assert_difference('GuideService.count', -1) do
      delete :destroy, id: @guide_service
    end

    assert_redirected_to guide_services_path
  end
end
