require 'test_helper'

class TouristSpotsControllerTest < ActionController::TestCase
  setup do
    @tourist_spot = tourist_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_spot" do
    assert_difference('TouristSpot.count') do
      post :create, tourist_spot: {  }
    end

    assert_redirected_to tourist_spot_path(assigns(:tourist_spot))
  end

  test "should show tourist_spot" do
    get :show, id: @tourist_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_spot
    assert_response :success
  end

  test "should update tourist_spot" do
    patch :update, id: @tourist_spot, tourist_spot: {  }
    assert_redirected_to tourist_spot_path(assigns(:tourist_spot))
  end

  test "should destroy tourist_spot" do
    assert_difference('TouristSpot.count', -1) do
      delete :destroy, id: @tourist_spot
    end

    assert_redirected_to tourist_spots_path
  end
end
